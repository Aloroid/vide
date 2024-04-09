if not game then script = require "test/relative-string" end

local switch = require(script.Parent.switch)
local read = require(script.Parent.read)

local function show<T>(source: (() -> any) | any, component: T | () -> T, fallback: (T | () -> T)?): () -> T?
    local function truthy()
        return not not read(source)
    end

    return switch(truthy) {
        [true] = component,
        [false] = fallback,
    }
end

return show ::
    (<T>(source: (() -> any) | any, component: (() -> T) | T) -> () -> T?) &
    (<T, U>(source: (() -> any) | any, component: (() -> T) | T, fallback: (() -> U) | U) -> () -> (T | U)?)
