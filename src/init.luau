--------------------------------------------------------------------------------
-- vide.luau
-- v0.2.0
--------------------------------------------------------------------------------

if not game then script = require "test/relative-string" end

local root = require(script.root)
local mount = require(script.mount)
local create = require(script.create)
local apply = require(script.apply)
local source = require(script.source)
local effect = require(script.effect)
local derive = require(script.derive)
local cleanup = require(script.cleanup)
local untrack = require(script.untrack)
local read = require(script.read)
local batch = require(script.batch)
local switch = require(script.switch)
local show = require(script.show)
local indexes, values = require(script.maps)()
local spring, update_springs = require(script.spring)()
local action = require(script.action)()
local changed = require(script.changed)
local throw = require(script.throw)
local flags = require(script.flags)
local roblox_types = require(script.roblox_types)

export type Source<T> = source.Source<T>
-- TYPES HERE
export type vAccessoryDescription = roblox_types.vAccessoryDescription
export type vAccoutrement = roblox_types.vAccoutrement
export type vAccessory = roblox_types.vAccessory
export type vHat = roblox_types.vHat
export type vAdPortal = roblox_types.vAdPortal
export type vAdvancedDragger = roblox_types.vAdvancedDragger
export type vAnalyticsService = roblox_types.vAnalyticsService
export type vAnimation = roblox_types.vAnimation
export type vCurveAnimation = roblox_types.vCurveAnimation
export type vKeyframeSequence = roblox_types.vKeyframeSequence
export type vAnimationController = roblox_types.vAnimationController
export type vAnimationRigData = roblox_types.vAnimationRigData
export type vAnimator = roblox_types.vAnimator
export type vAtmosphere = roblox_types.vAtmosphere
export type vAttachment = roblox_types.vAttachment
export type vBone = roblox_types.vBone
export type vAudioAnalyzer = roblox_types.vAudioAnalyzer
export type vAudioChorus = roblox_types.vAudioChorus
export type vAudioCompressor = roblox_types.vAudioCompressor
export type vAudioDeviceInput = roblox_types.vAudioDeviceInput
export type vAudioDeviceOutput = roblox_types.vAudioDeviceOutput
export type vAudioDistortion = roblox_types.vAudioDistortion
export type vAudioEcho = roblox_types.vAudioEcho
export type vAudioEmitter = roblox_types.vAudioEmitter
export type vAudioEqualizer = roblox_types.vAudioEqualizer
export type vAudioFader = roblox_types.vAudioFader
export type vAudioFlanger = roblox_types.vAudioFlanger
export type vAudioListener = roblox_types.vAudioListener
export type vAudioPitchShifter = roblox_types.vAudioPitchShifter
export type vAudioPlayer = roblox_types.vAudioPlayer
export type vAudioReverb = roblox_types.vAudioReverb
export type vAudioSearchParams = roblox_types.vAudioSearchParams
export type vBackpack = roblox_types.vBackpack
export type vRemoteEvent = roblox_types.vRemoteEvent
export type vUnreliableRemoteEvent = roblox_types.vUnreliableRemoteEvent
export type vWrapLayer = roblox_types.vWrapLayer
export type vWrapTarget = roblox_types.vWrapTarget
export type vBeam = roblox_types.vBeam
export type vBindableEvent = roblox_types.vBindableEvent
export type vBindableFunction = roblox_types.vBindableFunction
export type vBodyAngularVelocity = roblox_types.vBodyAngularVelocity
export type vBodyForce = roblox_types.vBodyForce
export type vBodyGyro = roblox_types.vBodyGyro
export type vBodyPosition = roblox_types.vBodyPosition
export type vBodyThrust = roblox_types.vBodyThrust
export type vBodyVelocity = roblox_types.vBodyVelocity
export type vRocketPropulsion = roblox_types.vRocketPropulsion
export type vBodyPartDescription = roblox_types.vBodyPartDescription
export type vBreakpoint = roblox_types.vBreakpoint
export type vBubbleChatMessageProperties = roblox_types.vBubbleChatMessageProperties
export type vCamera = roblox_types.vCamera
export type vBodyColors = roblox_types.vBodyColors
export type vCharacterMesh = roblox_types.vCharacterMesh
export type vPants = roblox_types.vPants
export type vShirt = roblox_types.vShirt
export type vShirtGraphic = roblox_types.vShirtGraphic
export type vSkin = roblox_types.vSkin
export type vClickDetector = roblox_types.vClickDetector
export type vDragDetector = roblox_types.vDragDetector
export type vClouds = roblox_types.vClouds
export type vConfiguration = roblox_types.vConfiguration
export type vAlignOrientation = roblox_types.vAlignOrientation
export type vAlignPosition = roblox_types.vAlignPosition
export type vAngularVelocity = roblox_types.vAngularVelocity
export type vAnimationConstraint = roblox_types.vAnimationConstraint
export type vBallSocketConstraint = roblox_types.vBallSocketConstraint
export type vHingeConstraint = roblox_types.vHingeConstraint
export type vLineForce = roblox_types.vLineForce
export type vLinearVelocity = roblox_types.vLinearVelocity
export type vPlaneConstraint = roblox_types.vPlaneConstraint
export type vPlane = roblox_types.vPlane
export type vRigidConstraint = roblox_types.vRigidConstraint
export type vRodConstraint = roblox_types.vRodConstraint
export type vRopeConstraint = roblox_types.vRopeConstraint
export type vCylindricalConstraint = roblox_types.vCylindricalConstraint
export type vPrismaticConstraint = roblox_types.vPrismaticConstraint
export type vSpringConstraint = roblox_types.vSpringConstraint
export type vTorque = roblox_types.vTorque
export type vTorsionSpringConstraint = roblox_types.vTorsionSpringConstraint
export type vUniversalConstraint = roblox_types.vUniversalConstraint
export type vVectorForce = roblox_types.vVectorForce
export type vHumanoidController = roblox_types.vHumanoidController
export type vSkateboardController = roblox_types.vSkateboardController
export type vVehicleController = roblox_types.vVehicleController
export type vAirController = roblox_types.vAirController
export type vClimbController = roblox_types.vClimbController
export type vGroundController = roblox_types.vGroundController
export type vSwimController = roblox_types.vSwimController
export type vControllerManager = roblox_types.vControllerManager
export type vCustomEvent = roblox_types.vCustomEvent
export type vCustomEventReceiver = roblox_types.vCustomEventReceiver
export type vBlockMesh = roblox_types.vBlockMesh
export type vCylinderMesh = roblox_types.vCylinderMesh
export type vEditableMesh = roblox_types.vEditableMesh
export type vFileMesh = roblox_types.vFileMesh
export type vSpecialMesh = roblox_types.vSpecialMesh
export type vDataStoreGetOptions = roblox_types.vDataStoreGetOptions
export type vDataStoreIncrementOptions = roblox_types.vDataStoreIncrementOptions
export type vDataStoreOptions = roblox_types.vDataStoreOptions
export type vDataStoreSetOptions = roblox_types.vDataStoreSetOptions
export type vDebuggerWatch = roblox_types.vDebuggerWatch
export type vDialog = roblox_types.vDialog
export type vDialogChoice = roblox_types.vDialogChoice
export type vDragger = roblox_types.vDragger
export type vEditableImage = roblox_types.vEditableImage
export type vRobloxEditableImage = roblox_types.vRobloxEditableImage
export type vEulerRotationCurve = roblox_types.vEulerRotationCurve
export type vExperienceInviteOptions = roblox_types.vExperienceInviteOptions
export type vExplosion = roblox_types.vExplosion
export type vFaceControls = roblox_types.vFaceControls
export type vDecal = roblox_types.vDecal
export type vTexture = roblox_types.vTexture
export type vHole = roblox_types.vHole
export type vMotorFeature = roblox_types.vMotorFeature
export type vFire = roblox_types.vFire
export type vFloatCurve = roblox_types.vFloatCurve
export type vFlyweightService = roblox_types.vFlyweightService
export type vCSGDictionaryService = roblox_types.vCSGDictionaryService
export type vNonReplicatedCSGDictionaryService = roblox_types.vNonReplicatedCSGDictionaryService
export type vFolder = roblox_types.vFolder
export type vForceField = roblox_types.vForceField
export type vFunctionalTest = roblox_types.vFunctionalTest
export type vGetTextBoundsParams = roblox_types.vGetTextBoundsParams
export type vCanvasGroup = roblox_types.vCanvasGroup
export type vFrame = roblox_types.vFrame
export type vImageButton = roblox_types.vImageButton
export type vTextButton = roblox_types.vTextButton
export type vImageLabel = roblox_types.vImageLabel
export type vTextLabel = roblox_types.vTextLabel
export type vScrollingFrame = roblox_types.vScrollingFrame
export type vTextBox = roblox_types.vTextBox
export type vVideoFrame = roblox_types.vVideoFrame
export type vViewportFrame = roblox_types.vViewportFrame
export type vBillboardGui = roblox_types.vBillboardGui
export type vScreenGui = roblox_types.vScreenGui
export type vGuiMain = roblox_types.vGuiMain
export type vAdGui = roblox_types.vAdGui
export type vSurfaceGui = roblox_types.vSurfaceGui
export type vFloorWire = roblox_types.vFloorWire
export type vSelectionBox = roblox_types.vSelectionBox
export type vBoxHandleAdornment = roblox_types.vBoxHandleAdornment
export type vConeHandleAdornment = roblox_types.vConeHandleAdornment
export type vCylinderHandleAdornment = roblox_types.vCylinderHandleAdornment
export type vImageHandleAdornment = roblox_types.vImageHandleAdornment
export type vLineHandleAdornment = roblox_types.vLineHandleAdornment
export type vSphereHandleAdornment = roblox_types.vSphereHandleAdornment
export type vWireframeHandleAdornment = roblox_types.vWireframeHandleAdornment
export type vParabolaAdornment = roblox_types.vParabolaAdornment
export type vSelectionSphere = roblox_types.vSelectionSphere
export type vArcHandles = roblox_types.vArcHandles
export type vHandles = roblox_types.vHandles
export type vSurfaceSelection = roblox_types.vSurfaceSelection
export type vSelectionPartLasso = roblox_types.vSelectionPartLasso
export type vSelectionPointLasso = roblox_types.vSelectionPointLasso
export type vPath2D = roblox_types.vPath2D
export type vHeightmapImporterService = roblox_types.vHeightmapImporterService
export type vHiddenSurfaceRemovalAsset = roblox_types.vHiddenSurfaceRemovalAsset
export type vHighlight = roblox_types.vHighlight
export type vHumanoid = roblox_types.vHumanoid
export type vHumanoidDescription = roblox_types.vHumanoidDescription
export type vIKControl = roblox_types.vIKControl
export type vRotateP = roblox_types.vRotateP
export type vRotateV = roblox_types.vRotateV
export type vGlue = roblox_types.vGlue
export type vManualGlue = roblox_types.vManualGlue
export type vManualWeld = roblox_types.vManualWeld
export type vMotor = roblox_types.vMotor
export type vMotor6D = roblox_types.vMotor6D
export type vRotate = roblox_types.vRotate
export type vSnap = roblox_types.vSnap
export type vVelocityMotor = roblox_types.vVelocityMotor
export type vWeld = roblox_types.vWeld
export type vKeyframe = roblox_types.vKeyframe
export type vKeyframeMarker = roblox_types.vKeyframeMarker
export type vPointLight = roblox_types.vPointLight
export type vSpotLight = roblox_types.vSpotLight
export type vSurfaceLight = roblox_types.vSurfaceLight
export type vLocalizationTable = roblox_types.vLocalizationTable
export type vScript = roblox_types.vScript
export type vLocalScript = roblox_types.vLocalScript
export type vModuleScript = roblox_types.vModuleScript
export type vMarkerCurve = roblox_types.vMarkerCurve
export type vMaterialVariant = roblox_types.vMaterialVariant
export type vMemoryStoreService = roblox_types.vMemoryStoreService
export type vMessage = roblox_types.vMessage
export type vHint = roblox_types.vHint
export type vNoCollisionConstraint = roblox_types.vNoCollisionConstraint
export type vOperationGraph = roblox_types.vOperationGraph
export type vCornerWedgePart = roblox_types.vCornerWedgePart
export type vPart = roblox_types.vPart
export type vFlagStand = roblox_types.vFlagStand
export type vSeat = roblox_types.vSeat
export type vSkateboardPlatform = roblox_types.vSkateboardPlatform
export type vSpawnLocation = roblox_types.vSpawnLocation
export type vWedgePart = roblox_types.vWedgePart
export type vMeshPart = roblox_types.vMeshPart
export type vPartOperation = roblox_types.vPartOperation
export type vIntersectOperation = roblox_types.vIntersectOperation
export type vNegateOperation = roblox_types.vNegateOperation
export type vUnionOperation = roblox_types.vUnionOperation
export type vTrussPart = roblox_types.vTrussPart
export type vVehicleSeat = roblox_types.vVehicleSeat
export type vModel = roblox_types.vModel
export type vActor = roblox_types.vActor
export type vHopperBin = roblox_types.vHopperBin
export type vTool = roblox_types.vTool
export type vFlag = roblox_types.vFlag
export type vWorldModel = roblox_types.vWorldModel
export type vPartOperationAsset = roblox_types.vPartOperationAsset
export type vParticleEmitter = roblox_types.vParticleEmitter
export type vPathfindingLink = roblox_types.vPathfindingLink
export type vPathfindingModifier = roblox_types.vPathfindingModifier
export type vPlayer = roblox_types.vPlayer
export type vPluginAction = roblox_types.vPluginAction
export type vPluginCapabilities = roblox_types.vPluginCapabilities
export type vNumberPose = roblox_types.vNumberPose
export type vPose = roblox_types.vPose
export type vBloomEffect = roblox_types.vBloomEffect
export type vBlurEffect = roblox_types.vBlurEffect
export type vColorCorrectionEffect = roblox_types.vColorCorrectionEffect
export type vDepthOfFieldEffect = roblox_types.vDepthOfFieldEffect
export type vSunRaysEffect = roblox_types.vSunRaysEffect
export type vProximityPrompt = roblox_types.vProximityPrompt
export type vProximityPromptService = roblox_types.vProximityPromptService
export type vReflectionMetadata = roblox_types.vReflectionMetadata
export type vReflectionMetadataCallbacks = roblox_types.vReflectionMetadataCallbacks
export type vReflectionMetadataClasses = roblox_types.vReflectionMetadataClasses
export type vReflectionMetadataEnums = roblox_types.vReflectionMetadataEnums
export type vReflectionMetadataEvents = roblox_types.vReflectionMetadataEvents
export type vReflectionMetadataFunctions = roblox_types.vReflectionMetadataFunctions
export type vReflectionMetadataClass = roblox_types.vReflectionMetadataClass
export type vReflectionMetadataEnum = roblox_types.vReflectionMetadataEnum
export type vReflectionMetadataEnumItem = roblox_types.vReflectionMetadataEnumItem
export type vReflectionMetadataMember = roblox_types.vReflectionMetadataMember
export type vReflectionMetadataProperties = roblox_types.vReflectionMetadataProperties
export type vReflectionMetadataYieldFunctions = roblox_types.vReflectionMetadataYieldFunctions
export type vRemoteFunction = roblox_types.vRemoteFunction
export type vRenderingTest = roblox_types.vRenderingTest
export type vRotationCurve = roblox_types.vRotationCurve
export type vBuoyancySensor = roblox_types.vBuoyancySensor
export type vControllerPartSensor = roblox_types.vControllerPartSensor
export type vSky = roblox_types.vSky
export type vSmoke = roblox_types.vSmoke
export type vSound = roblox_types.vSound
export type vChorusSoundEffect = roblox_types.vChorusSoundEffect
export type vCompressorSoundEffect = roblox_types.vCompressorSoundEffect
export type vDistortionSoundEffect = roblox_types.vDistortionSoundEffect
export type vEchoSoundEffect = roblox_types.vEchoSoundEffect
export type vEqualizerSoundEffect = roblox_types.vEqualizerSoundEffect
export type vFlangeSoundEffect = roblox_types.vFlangeSoundEffect
export type vPitchShiftSoundEffect = roblox_types.vPitchShiftSoundEffect
export type vReverbSoundEffect = roblox_types.vReverbSoundEffect
export type vTremoloSoundEffect = roblox_types.vTremoloSoundEffect
export type vSoundGroup = roblox_types.vSoundGroup
export type vSparkles = roblox_types.vSparkles
export type vStandalonePluginScripts = roblox_types.vStandalonePluginScripts
export type vStarterGear = roblox_types.vStarterGear
export type vStudioAttachment = roblox_types.vStudioAttachment
export type vStudioCallout = roblox_types.vStudioCallout
export type vStyleRule = roblox_types.vStyleRule
export type vStyleSheet = roblox_types.vStyleSheet
export type vStyleDerive = roblox_types.vStyleDerive
export type vStyleLink = roblox_types.vStyleLink
export type vSurfaceAppearance = roblox_types.vSurfaceAppearance
export type vTeam = roblox_types.vTeam
export type vTeleportOptions = roblox_types.vTeleportOptions
export type vTerrainDetail = roblox_types.vTerrainDetail
export type vTerrainRegion = roblox_types.vTerrainRegion
export type vTestService = roblox_types.vTestService
export type vTextChannel = roblox_types.vTextChannel
export type vTextChatCommand = roblox_types.vTextChatCommand
export type vTextChatMessageProperties = roblox_types.vTextChatMessageProperties
export type vTrackerStreamAnimation = roblox_types.vTrackerStreamAnimation
export type vTrail = roblox_types.vTrail
export type vTween = roblox_types.vTween
export type vUIAspectRatioConstraint = roblox_types.vUIAspectRatioConstraint
export type vUISizeConstraint = roblox_types.vUISizeConstraint
export type vUITextSizeConstraint = roblox_types.vUITextSizeConstraint
export type vUICorner = roblox_types.vUICorner
export type vUIFlexItem = roblox_types.vUIFlexItem
export type vUIGradient = roblox_types.vUIGradient
export type vUIGridLayout = roblox_types.vUIGridLayout
export type vUIListLayout = roblox_types.vUIListLayout
export type vUIPageLayout = roblox_types.vUIPageLayout
export type vUITableLayout = roblox_types.vUITableLayout
export type vUIPadding = roblox_types.vUIPadding
export type vUIScale = roblox_types.vUIScale
export type vUIStroke = roblox_types.vUIStroke
export type vUserNotification = roblox_types.vUserNotification
export type vUserNotificationPayload = roblox_types.vUserNotificationPayload
export type vUserNotificationPayloadAnalyticsData = roblox_types.vUserNotificationPayloadAnalyticsData
export type vUserNotificationPayloadJoinExperience = roblox_types.vUserNotificationPayloadJoinExperience
export type vUserNotificationPayloadParameterValue = roblox_types.vUserNotificationPayloadParameterValue
export type vBinaryStringValue = roblox_types.vBinaryStringValue
export type vBoolValue = roblox_types.vBoolValue
export type vBrickColorValue = roblox_types.vBrickColorValue
export type vCFrameValue = roblox_types.vCFrameValue
export type vColor3Value = roblox_types.vColor3Value
export type vDoubleConstrainedValue = roblox_types.vDoubleConstrainedValue
export type vIntConstrainedValue = roblox_types.vIntConstrainedValue
export type vIntValue = roblox_types.vIntValue
export type vNumberValue = roblox_types.vNumberValue
export type vObjectValue = roblox_types.vObjectValue
export type vRayValue = roblox_types.vRayValue
export type vStringValue = roblox_types.vStringValue
export type vVector3Value = roblox_types.vVector3Value
export type vVector3Curve = roblox_types.vVector3Curve
export type vVirtualInputManager = roblox_types.vVirtualInputManager
export type vWeldConstraint = roblox_types.vWeldConstraint
export type vWire = roblox_types.vWire
local function step(dt: number)
    if game then
        debug.profilebegin("VIDE STEP")
        debug.profilebegin("VIDE SPRING")
    end

    update_springs(dt)

    if game then
        debug.profileend()
        debug.profileend()
    end
end

local stepped = game and game:GetService("RunService").Heartbeat:Connect(function(dt: number)
    task.defer(step, dt)
end)

local vide = {
    -- core
    root = root,
    mount = mount,
    create = create,
    source = source,
    effect = effect,
    derive = derive,
    switch = switch,
    show = show,
    indexes = indexes,
    values = values,

    -- util
    cleanup = cleanup,
    untrack = untrack,
    read = read,
    batch = batch,

    -- animations
    spring = spring,

    -- actions
    action = action,
    changed = changed,

    -- flags
    strict = (nil :: any) :: boolean,

    -- temporary
    apply = function(instance: Instance)
        return function(props: { [any]: any })
            apply(instance, props)
            return instance
        end
    end,

    -- runtime
    step = function(dt: number)
        if stepped then
            stepped:Disconnect()
            stepped = nil
        end
        step(dt)
    end
}

setmetatable(vide :: any, {
    __index = function(_, index: unknown): ()
        if index == "strict" then
            return flags.strict
        else
            throw(`{tostring(index)} is not a valid member of vide`)
        end
    end,

    __newindex = function(_, index: unknown, value: unknown)
        if index == "strict" then
            flags.strict = value :: boolean
        else
            throw(`{tostring(index)} is not a valid member of vide`)
        end
    end
})

return vide