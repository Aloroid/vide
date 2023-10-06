if not game then script = require "test/relative-string" end
local typeof = game and typeof or require "test/mock".typeof:: never
local Instance = game and Instance or require "test/mock".Instance :: never

local throw = require(script.Parent.throw)
local defaults = require(script.Parent.defaults)
local apply = require(script.Parent.apply)
local roblox_types = require(script.Parent.roblox_types)

local ctor_cache = {} :: { [string]: () -> Instance }

setmetatable(ctor_cache :: any, {
    __index = function(self, class)
        local ok, instance: Instance = pcall(Instance.new, class :: any)
        if not ok then throw(`invalid class name, could not create instance of class { class }`) end

        local default: { [string]: unknown }? = defaults[class]
        if default then
            for i, v in next, default do
                (instance :: any)[i] = v
            end
        end

        local function ctor(properties: Props): Instance
            return apply(instance:Clone(), properties)    
        end  

        self[class] = ctor
        return ctor
    end
})

local function create_instance(class: string)
    return ctor_cache[class]
end

local function clone_instance(instance: Instance)
    return function(properties: Props): Instance
        local clone = instance:Clone()
        if not clone then throw "attempt to clone a non-archivable instance" end
        return apply(clone, properties)
    end
end

local function create(class_or_instance: string|Instance): (Props) -> Instance
    if type(class_or_instance) == "string" then
        return create_instance(class_or_instance)
    elseif typeof(class_or_instance) == "Instance" then
        return clone_instance(class_or_instance)
    else
        throw("bad argument #1, expected string or instance, got " .. typeof(class_or_instance))
        return nil :: never
    end
end

type Props = { [any]: any }
return (create :: any) :: 
( <T>(T & Instance) -> (roblox_types.pInstance) -> T ) &
( ("Folder") -> (roblox_types.pFolder) -> Folder ) &
( ("BillboardGui") -> (roblox_types.pBillboardGui) -> BillboardGui ) &
( ("CanvasGroup") -> (roblox_types.pCanvasGroup) -> CanvasGroup ) &
( ("Frame") -> (roblox_types.pFrame) -> Frame ) &
( ("ImageButton") -> (roblox_types.pImageButton) -> ImageButton ) &
( ("ImageLabel") -> (roblox_types.pImageLabel) -> ImageLabel ) &
( ("ScreenGui") -> (roblox_types.pScreenGui) -> ScreenGui ) &
( ("ScrollingFrame") -> (roblox_types.pScrollingFrame) -> ScrollingFrame ) &
( ("SurfaceGui") -> (roblox_types.pSurfaceGui) -> SurfaceGui ) &
( ("TextBox") -> (roblox_types.pTextBox) -> TextBox ) &
( ("TextButton") -> (roblox_types.pTextButton) -> TextButton ) &
( ("TextLabel") -> (roblox_types.pTextLabel) -> TextLabel ) &
( ("UIAspectRatioConstraint") -> (roblox_types.pUIAspectRatioConstraint) -> UIAspectRatioConstraint ) &
( ("UICorner") -> (roblox_types.pUICorner) -> UICorner ) &
( ("UIGradient") -> (roblox_types.pUIGradient) -> UIGradient ) &
( ("UIGridLayout") -> (roblox_types.pUIGridLayout) -> UIGridLayout ) &
( ("UIListLayout") -> (roblox_types.pUIListLayout) -> UIListLayout ) &
( ("UIPadding") -> (roblox_types.pUIPadding) -> UIPadding ) &
( ("UIPageLayout") -> (roblox_types.pUIPageLayout) -> UIPageLayout ) &
( ("UIScale") -> (roblox_types.pUIScale) -> UIScale ) &
( ("UISizeConstraint") -> (roblox_types.pUISizeConstraint) -> UISizeConstraint ) &
( ("UIStroke") -> (roblox_types.pUIStroke) -> UIStroke ) &
( ("UITableLayout") -> (roblox_types.pUITableLayout) -> UITableLayout ) &
( ("UITextSizeConstraint") -> (roblox_types.pUITextSizeConstraint) -> UITextSizeConstraint ) &
( ("VideoFrame") -> (roblox_types.pVideoFrame) -> VideoFrame ) &
( ("ViewportFrame") -> (roblox_types.pViewportFrame) -> ViewportFrame ) &
( ("Camera") -> (roblox_types.pCamera) -> Camera ) &
( ("WorldModel") -> (roblox_types.pWorldModel) -> WorldModel ) &
( (string) -> (roblox_types.pInstance) -> Instance )
