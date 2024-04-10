if not game then script = require "test/relative-string" end
local Vector3 = game and Vector3 or require "test/mock".Vector3 :: never

--[[

Supported datatypes:
- number
- CFrame
- Color3
- UDim
- UDim2
- Vector2
- Vector3
- Rect

Unsupported datatypes:
- bool
- Vector2int16
- Vector3int16
- EnumItem

]]

local throw = require(script.Parent.throw)
local graph = require(script.Parent.graph)
type Node<T> = graph.Node<T>
type StartNode<T> = graph.StartNode<T>
local create_node = graph.create_node
local create_start_node = graph.create_start_node
local assert_owning_scope = graph.assert_owning_scope
local evaluate_node = graph.evaluate_node
local update = graph.update
local set_owner = graph.set_owner
local track = graph.track

local UPDATE_RATE = 120
local TOLERANCE = 0.0001

type Vec3 = Vector3

local function Vec3(x: number?, y: number?, z: number?)
    return Vector3.new(x, y, z)
end

local ZERO = Vec3(0, 0, 0)

type Animatable = number | CFrame | Color3 | UDim | UDim2 | Vector2 | Vector3

type SpringData<T> = {
    speed: number,
    damping: number,
    _last_schedule: number,

    -- dimensions 1-3
    a_123: Vec3,
    b_123: Vec3,
    x_123: Vec3,
    v0_123: Vec3,
    v1_123: Vec3,

    -- dimensions 4-6
    a_456: Vec3,
    b_456: Vec3,
    x_456: Vec3,
    v0_456: Vec3,
    v1_456: Vec3,

    source_value: T -- current value of spring input source
}

type TypeToVec6<T> = (T) -> (Vec3, Vec3)
type Vec6ToType<T> = (Vec3, Vec3) -> T

local type_to_vec6 = {
    number = function(v)
        return Vec3(v, 0, 0), ZERO
    end :: TypeToVec6<number>,

    CFrame = function(v)
        return v.Position, Vec3(v:ToEulerAnglesXYZ())
    end :: TypeToVec6<CFrame>,

    Color3 = function(v)
        -- todo: hsv, oklab?
        return Vec3(v.R, v.G, v.B), ZERO
    end :: TypeToVec6<Color3>,

    UDim = function(v)
        return Vec3(v.Scale, v.Offset, 0), ZERO
    end :: TypeToVec6<UDim>,
    
    UDim2 = function(v)
        return Vec3(v.X.Scale, v.X.Offset, v.Y.Scale), Vec3(v.Y.Offset, 0, 0)
    end :: TypeToVec6<UDim2>,

    Vector2 = function(v)
        return Vec3(v.X, v.Y, 0), ZERO
    end :: TypeToVec6<Vector2>,

    Vector3 = function(v)
        return v, ZERO
    end :: TypeToVec6<Vector3>,

    Rect = function(v)
        return Vec3(v.Min.X, v.Min.Y, v.Max.X), Vec3(v.Max.Y, 0, 0)
    end :: TypeToVec6<Rect>
}

local vec6_to_type = {
    number = function(a, b)
        return a.X
    end :: Vec6ToType<number>,

    CFrame = function(a, b)
        return CFrame.new(a) * CFrame.fromEulerAnglesXYZ(b.X, b.Y, b.Z)
    end :: Vec6ToType<CFrame>,

    Color3 = function(v)
        return Color3.new(v.X, v.Y, v.Z)
    end :: Vec6ToType<Color3>,

    UDim = function(v)
        return UDim.new(v.X, v.Y)
    end :: Vec6ToType<UDim>,
    
    UDim2 = function(a, b)
        return UDim2.new(a.X, a.Y, a.Z, b.X)
    end :: Vec6ToType<UDim2>,

    Vector2 = function(v)
        return Vector2.new(v.X, v.Y)
    end :: Vec6ToType<Vector2>,

    Vector3 = function(v)
        return v
    end :: Vec6ToType<Vector3>,

    Rect = function(a, b)
        return Rect.new(a.X, a.Y, a.Z, b.X)
    end :: Vec6ToType<Rect>
}

local invalid_type = {
    __index = function(_, t: string)
        throw(`cannot spring type {t}`)
    end
}

setmetatable(type_to_vec6, invalid_type)
setmetatable(vec6_to_type, invalid_type)

-- maps spring data to its corresponding output node
-- lifetime of spring data is tied to output node
local springs: { [SpringData<any>]: StartNode<any> } = {}
setmetatable(springs, { __mode = "v" })

local function spring<T>(source: () -> T, speed: number?, damping: number?): () -> T
    local owner = assert_owning_scope()

    -- https://en.wikipedia.org/wiki/Damping

    --[[local w_n = 2*math.pi / (speed or 1)
    local z = damping or 1

    local k = w_n^2
    local c_c = 2*w_n
    local c = z * c_c]]

    -- todo: is there a solution other than reducing step size?
    -- todo: this does not catch all solver exploding cases
    --if c > UPDATE_RATE*2 then -- solver will explode if this is true
    --    throw("spring damping too high, consider reducing damping or increasing period")
    --end

    local data: SpringData<T> = {
        speed = speed or 10,
        damping = damping or 1,
        _last_schedule = -1,

        a_123 = ZERO,
        b_123 = ZERO,
        x_123 = ZERO,
        v0_123 = ZERO,
        v1_123 = ZERO,

        a_456 = ZERO,
        b_456 = ZERO,
        x_456 = ZERO,
        v0_456 = ZERO,
        v1_456 = ZERO,

        source_value = false :: any,
    }
    
    local output = create_start_node(false :: any)

    local function updater_effect()
        local value = source()
        data.b_123, data.b_456 = type_to_vec6[typeof(value)](value)
        data.a_123, data.a_456 = data.x_123, data.x_456
        data.v0_123, data.v0_456 = data.v1_123, data.v1_456
        data.source_value = value
        data._last_schedule = os.clock() -- todo: instead use the time of when the frame started.
        springs[data] = output -- todo: investigate why insertion is not O(1) at ~20k springs
        return value
    end

    local updater = create_node(false :: any, updater_effect)

    set_owner(updater, owner)
    evaluate_node(updater)

    -- set initial position to goal
    data.x_123, data.x_456 = data.b_123, data.b_456
    data.a_123, data.a_456 = data.b_123, data.b_456

    -- set output to goal
    output.cache = data.source_value

    return function()
        track(output)
        return output.cache
    end
end

local function spring_coefficients(time: number, damping: number, speed: number): (number, number, number, number)
	-- if time or speed is 0, then the spring won't move
	if time == 0 or speed == 0 then
		return 1, 0, 0, 1
	end
	local pos_pos, pos_vel, vel_pos, vel_vel

	if damping > 1 then
		-- overdamped spring
		-- solution to the characteristic equation:
		-- z = -ζω ± Sqrt[ζ^2 - 1] ω
		-- x[t] -> x0(e^(t z2) z1 - e^(t z1) z2)/(z1 - z2)
		--		 + v0(e^(t z1) - e^(t z2))/(z1 - z2)
		-- v[t] -> x0(z1 z2(-e^(t z1) + e^(t z2)))/(z1 - z2)
		--		 + v0(z1 e^(t z1) - z2 e^(t z2))/(z1 - z2)

		local scaled_time = time * speed
		local alpha = math.sqrt(damping^2 - 1)
		local scaled_inv_alpha = -0.5 / alpha
		local z1 = -alpha - damping
		local z2 = 1 / z1
		local exp_z1 = math.exp(scaled_time * z1)
		local exp_z2 = math.exp(scaled_time * z2)

		pos_pos = (exp_z2*z1 - exp_z1*z2) * scaled_inv_alpha
		pos_vel = (exp_z1 - exp_z2) * scaled_inv_alpha / speed
		vel_pos = (exp_z2 - exp_z1) * scaled_inv_alpha * speed
		vel_vel = (exp_z1*z1 - exp_z2*z2) * scaled_inv_alpha

	elseif damping == 1 then
		-- critically damped spring
		-- x[t] -> x0(e^-tω)(1+tω) + v0(e^-tω)t
		-- v[t] -> x0(t ω^2)(-e^-tω) + v0(1 - tω)(e^-tω)

		local scaled_time = time * speed
		local exp_term = math.exp(-scaled_time)

		pos_pos = exp_term * (1 + scaled_time)
		pos_vel = exp_term * time
		vel_pos = exp_term * (-scaled_time*speed)
		vel_vel = exp_term * (1 - scaled_time)

	else
		-- underdamped spring
		-- factored out of the solutions to the characteristic equation:
		-- α = Sqrt[1 - ζ^2]
		-- x[t] -> x0(e^-tζω)(α Cos[tα] + ζω Sin[tα])/α
		--       + v0(e^-tζω)(Sin[tα])/α
		-- v[t] -> x0(-e^-tζω)(α^2 + ζ^2 ω^2)(Sin[tα])/α
		--       + v0(e^-tζω)(α Cos[tα] - ζω Sin[tα])/α

		local scaled_time = time * speed
		local alpha = math.sqrt(1 - damping^2)
		local inv_alpha = 1 / alpha
		local alpha_time = alpha * scaled_time
		local exp_term = math.exp(-scaled_time*damping)
		local sin_term = exp_term * math.sin(alpha_time)
		local cos_term = exp_term * math.cos(alpha_time)
		local sin_inv_alpha = sin_term*inv_alpha
		local sin_inv_alpha_damp = sin_inv_alpha*damping

		pos_pos = sin_inv_alpha_damp + cos_term
		pos_vel = sin_inv_alpha
		vel_pos = -(sin_inv_alpha_damp*damping + sin_term*alpha)
		vel_vel = cos_term - sin_inv_alpha_damp
	end

	return pos_pos, pos_vel, vel_pos, vel_vel
end

local function step_springs(dt: number)
    local now = os.clock()
    for data in next, springs do
        local speed, damping = data.speed, data.damping
        local a_123, a_456 = data.a_123, data.a_456
        local b_123, b_456 = data.b_123, data.b_456

        local pos_pos, pos_vel, vel_pos, vel_vel = spring_coefficients(now - data._last_schedule, damping, speed)

        -- calculate displacement from target
        local d0_123, d0_456 = a_123 - b_123, a_456 - b_456
        local v0_123, v0_456 = data.v0_123, data.v0_456
        local d1_123, d1_456 = d0_123 * pos_pos + v0_123 * pos_vel, d0_456 * pos_pos + v0_123 * pos_vel
        local v1_123, v1_456 = d0_123 * vel_pos + v0_123 * vel_vel, d0_456 * vel_pos + v0_456 * vel_vel

        data.x_123, data.x_456 = d1_123 + b_123, d1_456 + b_456
        data.v1_123, data.v1_456 =  v1_123, v1_456
    end
end

local remove_queue = {}

local function update_spring_sources()
    for data, output in next, springs do
        local x_123, b_123, v_123,
        x0_456, x1_456, v_456 =
            data.x_123, data.b_123, data.v1_123,
            data.x_456, data.b_456, data.v1_456
    
        local dx_123, dx_456 =
            x_123 - b_123,
            x0_456 - x1_456

        -- todo: can this false positive?
        if (v_123 + v_456 + dx_123 + dx_456).Magnitude < TOLERANCE then
            -- close enough to target, unshedule spring and set value to target
            table.insert(remove_queue, data)
            output.cache = data.source_value
        else
            output.cache = vec6_to_type[typeof(data.source_value)](x_123, x0_456)
        end

        update(output)
    end

    for _, data in next, remove_queue do
        data._last_schedule = -1
        data.a_123, data.a_456 = data.x_123, data.x_456
        springs[data] = nil
    end

    table.clear(remove_queue)
end

return function()
    local time_elapsed = 0

    return spring, function(dt: number)
        time_elapsed += dt

        while time_elapsed > 1 / UPDATE_RATE do
            time_elapsed -= 1 / UPDATE_RATE
            step_springs(1 / UPDATE_RATE)
        end

        update_spring_sources()
    end
end
