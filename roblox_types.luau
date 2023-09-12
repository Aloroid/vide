type Prop<T> = (() -> T) | T?
type Event<T=() -> ()> = T?
type Array<T=any> = {T}
type Dictionary<T=any> = {[string]: T}
export type propsInstance = {
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsFolder = {
	-- Folder
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsBillboardGui = {
	-- BillboardGui
	Active: Prop<boolean>;
	Adornee: Prop<Instance>;
	AlwaysOnTop: Prop<boolean>;
	Brightness: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	DistanceLowerLimit: Prop<number>;
	DistanceStep: Prop<number>;
	DistanceUpperLimit: Prop<number>;
	ExtentsOffset: Prop<Vector3>;
	ExtentsOffsetWorldSpace: Prop<Vector3>;
	LightInfluence: Prop<number>;
	MaxDistance: Prop<number>;
	PlayerToHideFrom: Prop<Instance>;
	Size: Prop<UDim2>;
	SizeOffset: Prop<Vector2>;
	StudsOffset: Prop<Vector3>;
	StudsOffsetWorldSpace: Prop<Vector3>;
	-- LayerCollector
	Enabled: Prop<boolean>;
	ResetOnSpawn: Prop<boolean>;
	ZIndexBehavior: Prop<Enum.ZIndexBehavior>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsCanvasGroup = {
	-- CanvasGroup
	GroupColor3: Prop<Color3>;
	GroupTransparency: Prop<number>;
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsFrame = {
	-- Frame
	Style: Prop<Enum.FrameStyle>;
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsImageButton = {
	-- ImageButton
	HoverImage: Prop<string>;
	Image: Prop<string>;
	ImageColor3: Prop<Color3>;
	ImageRectOffset: Prop<Vector2>;
	ImageRectSize: Prop<Vector2>;
	ImageTransparency: Prop<number>;
	PressedImage: Prop<string>;
	ResampleMode: Prop<Enum.ResamplerMode>;
	ScaleType: Prop<Enum.ScaleType>;
	SliceCenter: Prop<Rect>;
	SliceScale: Prop<number>;
	TileSize: Prop<UDim2>;
	-- GuiButton
	AutoButtonColor: Prop<boolean>;
	Modal: Prop<boolean>;
	Selected: Prop<boolean>;
	Style: Prop<Enum.ButtonStyle>;
	Activated: Event<(inputObject: InputObject, clickCount: number) -> ()>;
	MouseButton1Click: Event<() -> ()>;
	MouseButton1Down: Event<(x: number, y: number) -> ()>;
	MouseButton1Up: Event<(x: number, y: number) -> ()>;
	MouseButton2Click: Event<() -> ()>;
	MouseButton2Down: Event<(x: number, y: number) -> ()>;
	MouseButton2Up: Event<(x: number, y: number) -> ()>;
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsImageLabel = {
	-- ImageLabel
	Image: Prop<string>;
	ImageColor3: Prop<Color3>;
	ImageRectOffset: Prop<Vector2>;
	ImageRectSize: Prop<Vector2>;
	ImageTransparency: Prop<number>;
	ResampleMode: Prop<Enum.ResamplerMode>;
	ScaleType: Prop<Enum.ScaleType>;
	SliceCenter: Prop<Rect>;
	SliceScale: Prop<number>;
	TileSize: Prop<UDim2>;
	-- GuiLabel
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsScreenGui = {
	-- ScreenGui
	ClipToDeviceSafeArea: Prop<boolean>;
	DisplayOrder: Prop<number>;
	IgnoreGuiInset: Prop<boolean>;
	SafeAreaCompatibility: Prop<Enum.SafeAreaCompatibility>;
	ScreenInsets: Prop<Enum.ScreenInsets>;
	-- LayerCollector
	Enabled: Prop<boolean>;
	ResetOnSpawn: Prop<boolean>;
	ZIndexBehavior: Prop<Enum.ZIndexBehavior>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsScrollingFrame = {
	-- ScrollingFrame
	AutomaticCanvasSize: Prop<Enum.AutomaticSize>;
	BottomImage: Prop<string>;
	CanvasPosition: Prop<Vector2>;
	CanvasSize: Prop<UDim2>;
	ElasticBehavior: Prop<Enum.ElasticBehavior>;
	HorizontalScrollBarInset: Prop<Enum.ScrollBarInset>;
	MidImage: Prop<string>;
	ScrollBarImageColor3: Prop<Color3>;
	ScrollBarImageTransparency: Prop<number>;
	ScrollBarThickness: Prop<number>;
	ScrollingDirection: Prop<Enum.ScrollingDirection>;
	ScrollingEnabled: Prop<boolean>;
	TopImage: Prop<string>;
	VerticalScrollBarInset: Prop<Enum.ScrollBarInset>;
	VerticalScrollBarPosition: Prop<Enum.VerticalScrollBarPosition>;
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsSurfaceGui = {
	-- SurfaceGui
	AlwaysOnTop: Prop<boolean>;
	Brightness: Prop<number>;
	CanvasSize: Prop<Vector2>;
	ClipsDescendants: Prop<boolean>;
	LightInfluence: Prop<number>;
	MaxDistance: Prop<number>;
	PixelsPerStud: Prop<number>;
	SizingMode: Prop<Enum.SurfaceGuiSizingMode>;
	ToolPunchThroughDistance: Prop<number>;
	ZOffset: Prop<number>;
	-- SurfaceGuiBase
	Active: Prop<boolean>;
	Adornee: Prop<Instance>;
	Face: Prop<Enum.NormalId>;
	-- LayerCollector
	Enabled: Prop<boolean>;
	ResetOnSpawn: Prop<boolean>;
	ZIndexBehavior: Prop<Enum.ZIndexBehavior>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsTextBox = {
	-- TextBox
	ClearTextOnFocus: Prop<boolean>;
	CursorPosition: Prop<number>;
	Font: Prop<Enum.Font>;
	FontFace: Prop<Font>;
	LineHeight: Prop<number>;
	MaxVisibleGraphemes: Prop<number>;
	MultiLine: Prop<boolean>;
	PlaceholderColor3: Prop<Color3>;
	PlaceholderText: Prop<string>;
	RichText: Prop<boolean>;
	SelectionStart: Prop<number>;
	ShowNativeInput: Prop<boolean>;
	Text: Prop<string>;
	TextColor3: Prop<Color3>;
	TextDirection: Prop<Enum.TextDirection>;
	TextEditable: Prop<boolean>;
	TextScaled: Prop<boolean>;
	TextSize: Prop<number>;
	TextStrokeColor3: Prop<Color3>;
	TextStrokeTransparency: Prop<number>;
	TextTransparency: Prop<number>;
	TextTruncate: Prop<Enum.TextTruncate>;
	TextWrapped: Prop<boolean>;
	TextXAlignment: Prop<Enum.TextXAlignment>;
	TextYAlignment: Prop<Enum.TextYAlignment>;
	FocusLost: Event<(enterPressed: boolean, inputThatCausedFocusLoss: InputObject) -> ()>;
	Focused: Event<() -> ()>;
	ReturnPressedFromOnScreenKeyboard: Event<() -> ()>;
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsTextButton = {
	-- TextButton
	Font: Prop<Enum.Font>;
	FontFace: Prop<Font>;
	LineHeight: Prop<number>;
	MaxVisibleGraphemes: Prop<number>;
	RichText: Prop<boolean>;
	Text: Prop<string>;
	TextColor3: Prop<Color3>;
	TextDirection: Prop<Enum.TextDirection>;
	TextScaled: Prop<boolean>;
	TextSize: Prop<number>;
	TextStrokeColor3: Prop<Color3>;
	TextStrokeTransparency: Prop<number>;
	TextTransparency: Prop<number>;
	TextTruncate: Prop<Enum.TextTruncate>;
	TextWrapped: Prop<boolean>;
	TextXAlignment: Prop<Enum.TextXAlignment>;
	TextYAlignment: Prop<Enum.TextYAlignment>;
	-- GuiButton
	AutoButtonColor: Prop<boolean>;
	Modal: Prop<boolean>;
	Selected: Prop<boolean>;
	Style: Prop<Enum.ButtonStyle>;
	Activated: Event<(inputObject: InputObject, clickCount: number) -> ()>;
	MouseButton1Click: Event<() -> ()>;
	MouseButton1Down: Event<(x: number, y: number) -> ()>;
	MouseButton1Up: Event<(x: number, y: number) -> ()>;
	MouseButton2Click: Event<() -> ()>;
	MouseButton2Down: Event<(x: number, y: number) -> ()>;
	MouseButton2Up: Event<(x: number, y: number) -> ()>;
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsTextLabel = {
	-- TextLabel
	Font: Prop<Enum.Font>;
	FontFace: Prop<Font>;
	LineHeight: Prop<number>;
	MaxVisibleGraphemes: Prop<number>;
	RichText: Prop<boolean>;
	Text: Prop<string>;
	TextColor3: Prop<Color3>;
	TextDirection: Prop<Enum.TextDirection>;
	TextScaled: Prop<boolean>;
	TextSize: Prop<number>;
	TextStrokeColor3: Prop<Color3>;
	TextStrokeTransparency: Prop<number>;
	TextTransparency: Prop<number>;
	TextTruncate: Prop<Enum.TextTruncate>;
	TextWrapped: Prop<boolean>;
	TextXAlignment: Prop<Enum.TextXAlignment>;
	TextYAlignment: Prop<Enum.TextYAlignment>;
	-- GuiLabel
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUIAspectRatioConstraint = {
	-- UIAspectRatioConstraint
	AspectRatio: Prop<number>;
	AspectType: Prop<Enum.AspectType>;
	DominantAxis: Prop<Enum.DominantAxis>;
	-- UIConstraint
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUICorner = {
	-- UICorner
	CornerRadius: Prop<UDim>;
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUIGradient = {
	-- UIGradient
	Color: Prop<ColorSequence>;
	Enabled: Prop<boolean>;
	Offset: Prop<Vector2>;
	Rotation: Prop<number>;
	Transparency: Prop<NumberSequence>;
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUIGridLayout = {
	-- UIGridLayout
	CellPadding: Prop<UDim2>;
	CellSize: Prop<UDim2>;
	FillDirectionMaxCells: Prop<number>;
	StartCorner: Prop<Enum.StartCorner>;
	-- UIGridStyleLayout
	FillDirection: Prop<Enum.FillDirection>;
	HorizontalAlignment: Prop<Enum.HorizontalAlignment>;
	SortOrder: Prop<Enum.SortOrder>;
	VerticalAlignment: Prop<Enum.VerticalAlignment>;
	-- UILayout
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUIListLayout = {
	-- UIListLayout
	Padding: Prop<UDim>;
	-- UIGridStyleLayout
	FillDirection: Prop<Enum.FillDirection>;
	HorizontalAlignment: Prop<Enum.HorizontalAlignment>;
	SortOrder: Prop<Enum.SortOrder>;
	VerticalAlignment: Prop<Enum.VerticalAlignment>;
	-- UILayout
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUIPadding = {
	-- UIPadding
	PaddingBottom: Prop<UDim>;
	PaddingLeft: Prop<UDim>;
	PaddingRight: Prop<UDim>;
	PaddingTop: Prop<UDim>;
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUIPageLayout = {
	-- UIPageLayout
	Animated: Prop<boolean>;
	Circular: Prop<boolean>;
	EasingDirection: Prop<Enum.EasingDirection>;
	EasingStyle: Prop<Enum.EasingStyle>;
	GamepadInputEnabled: Prop<boolean>;
	Padding: Prop<UDim>;
	ScrollWheelInputEnabled: Prop<boolean>;
	TouchInputEnabled: Prop<boolean>;
	TweenTime: Prop<number>;
	PageEnter: Event<(page: Instance) -> ()>;
	PageLeave: Event<(page: Instance) -> ()>;
	Stopped: Event<(currentPage: Instance) -> ()>;
	-- UIGridStyleLayout
	FillDirection: Prop<Enum.FillDirection>;
	HorizontalAlignment: Prop<Enum.HorizontalAlignment>;
	SortOrder: Prop<Enum.SortOrder>;
	VerticalAlignment: Prop<Enum.VerticalAlignment>;
	-- UILayout
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUIScale = {
	-- UIScale
	Scale: Prop<number>;
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUISizeConstraint = {
	-- UISizeConstraint
	MaxSize: Prop<Vector2>;
	MinSize: Prop<Vector2>;
	-- UIConstraint
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUIStroke = {
	-- UIStroke
	ApplyStrokeMode: Prop<Enum.ApplyStrokeMode>;
	Color: Prop<Color3>;
	Enabled: Prop<boolean>;
	LineJoinMode: Prop<Enum.LineJoinMode>;
	Thickness: Prop<number>;
	Transparency: Prop<number>;
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUITableLayout = {
	-- UITableLayout
	FillEmptySpaceColumns: Prop<boolean>;
	FillEmptySpaceRows: Prop<boolean>;
	MajorAxis: Prop<Enum.TableMajorAxis>;
	Padding: Prop<UDim2>;
	-- UIGridStyleLayout
	FillDirection: Prop<Enum.FillDirection>;
	HorizontalAlignment: Prop<Enum.HorizontalAlignment>;
	SortOrder: Prop<Enum.SortOrder>;
	VerticalAlignment: Prop<Enum.VerticalAlignment>;
	-- UILayout
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsUITextSizeConstraint = {
	-- UITextSizeConstraint
	MaxTextSize: Prop<number>;
	MinTextSize: Prop<number>;
	-- UIConstraint
	-- UIComponent
	-- UIBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsVideoFrame = {
	-- VideoFrame
	Looped: Prop<boolean>;
	Playing: Prop<boolean>;
	TimePosition: Prop<number>;
	Video: Prop<string>;
	Volume: Prop<number>;
	DidLoop: Event<(video: string) -> ()>;
	Ended: Event<(video: string) -> ()>;
	Loaded: Event<(video: string) -> ()>;
	Paused: Event<(video: string) -> ()>;
	Played: Event<(video: string) -> ()>;
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsViewportFrame = {
	-- ViewportFrame
	Ambient: Prop<Color3>;
	CurrentCamera: Prop<Camera>;
	ImageColor3: Prop<Color3>;
	ImageTransparency: Prop<number>;
	LightColor: Prop<Color3>;
	LightDirection: Prop<Vector3>;
	-- GuiObject
	Active: Prop<boolean>;
	AnchorPoint: Prop<Vector2>;
	AutomaticSize: Prop<Enum.AutomaticSize>;
	BackgroundColor3: Prop<Color3>;
	BackgroundTransparency: Prop<number>;
	BorderColor3: Prop<Color3>;
	BorderMode: Prop<Enum.BorderMode>;
	BorderSizePixel: Prop<number>;
	ClipsDescendants: Prop<boolean>;
	Interactable: Prop<boolean>;
	LayoutOrder: Prop<number>;
	NextSelectionDown: Prop<GuiObject>;
	NextSelectionLeft: Prop<GuiObject>;
	NextSelectionRight: Prop<GuiObject>;
	NextSelectionUp: Prop<GuiObject>;
	Position: Prop<UDim2>;
	Rotation: Prop<number>;
	Selectable: Prop<boolean>;
	SelectionImageObject: Prop<GuiObject>;
	SelectionOrder: Prop<number>;
	Size: Prop<UDim2>;
	SizeConstraint: Prop<Enum.SizeConstraint>;
	Transparency: Prop<number>;
	Visible: Prop<boolean>;
	ZIndex: Prop<number>;
	InputBegan: Event<(input: InputObject) -> ()>;
	InputChanged: Event<(input: InputObject) -> ()>;
	InputEnded: Event<(input: InputObject) -> ()>;
	MouseEnter: Event<(x: number, y: number) -> ()>;
	MouseLeave: Event<(x: number, y: number) -> ()>;
	MouseMoved: Event<(x: number, y: number) -> ()>;
	MouseWheelBackward: Event<(x: number, y: number) -> ()>;
	MouseWheelForward: Event<(x: number, y: number) -> ()>;
	SelectionGained: Event<() -> ()>;
	SelectionLost: Event<() -> ()>;
	TouchLongPress: Event<(touchPositions: Array, state: Enum.UserInputState) -> ()>;
	TouchPan: Event<(touchPositions: Array, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> ()>;
	TouchPinch: Event<(touchPositions: Array, scale: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchRotate: Event<(touchPositions: Array, rotation: number, velocity: number, state: Enum.UserInputState) -> ()>;
	TouchSwipe: Event<(swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()>;
	TouchTap: Event<(touchPositions: Array) -> ()>;
	-- GuiBase2d
	AutoLocalize: Prop<boolean>;
	RootLocalizationTable: Prop<LocalizationTable>;
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>;
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>;
	SelectionGroup: Prop<boolean>;
	SelectionChanged: Event<(amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()>;
	-- GuiBase
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsCamera = {
	-- Camera
	CFrame: Prop<CFrame>;
	CameraSubject: Prop<Instance>;
	CameraType: Prop<Enum.CameraType>;
	DiagonalFieldOfView: Prop<number>;
	FieldOfView: Prop<number>;
	FieldOfViewMode: Prop<Enum.FieldOfViewMode>;
	Focus: Prop<CFrame>;
	HeadLocked: Prop<boolean>;
	HeadScale: Prop<number>;
	MaxAxisFieldOfView: Prop<number>;
	VRTiltAndRollEnabled: Prop<boolean>;
	InterpolationFinished: Event<() -> ()>;
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
export type propsWorldModel = {
	-- WorldModel
	-- WorldRoot
	-- Model
	ModelStreamingMode: Prop<Enum.ModelStreamingMode>;
	PrimaryPart: Prop<BasePart>;
	WorldPivot: Prop<CFrame>;
	-- PVInstance
	-- Instance
	Archivable: Prop<boolean>;
	Name: Prop<string>;
	Parent: Prop<Instance>;
	AncestryChanged: Event<(child: Instance, parent: Instance) -> ()>;
	AttributeChanged: Event<(attribute: string) -> ()>;
	Changed: Event<(property: string) -> ()>;
	ChildAdded: Event<(child: Instance) -> ()>;
	ChildRemoved: Event<(child: Instance) -> ()>;
	DescendantAdded: Event<(descendant: Instance) -> ()>;
	DescendantRemoving: Event<(descendant: Instance) -> ()>;
	Destroying: Event<() -> ()>;
}
