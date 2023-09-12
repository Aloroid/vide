import requests

desired_classes = [
	"Instance",
	"Folder",
	"BillboardGui",
	"CanvasGroup",
	"Frame",
	"ImageButton",
	"ImageLabel",
	"ScreenGui",
	"ScrollingFrame",
	"SurfaceGui",
	"TextBox",
	"TextButton",
	"TextLabel",
	"UIAspectRatioConstraint",
	"UICorner",
	"UIGradient",
	"UIGridLayout",
	"UIListLayout",
	"UIPadding",
	"UIPageLayout",
	"UIScale",
	"UISizeConstraint",
	"UIStroke",
	"UITableLayout",
	"UITextSizeConstraint",
	"VideoFrame",
	"ViewportFrame",
	"Camera",
	"WorldModel"
]

lines_before = [
	"type Prop<T> = (() -> T) | T?",
	"type Event<T=() -> ()> = T?",
	"type Array<T=any> = {T}",
	"type Dictionary<T=any> = {[string]: T}"
	""
]

lines_after = [
	""
	"return \{\}"
]

lines = []

for line in lines_before:
	lines.append(line)

API_DUMP_LINK = "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/API-Dump.json"

api_dump_request = requests.get(API_DUMP_LINK)

api_dump = api_dump_request.json()

aliases = {
	"int64": "number",
	"int": "number",
	"float": "number",
	"double": "number",
	"bool": "boolean",
	"Content": "string"
}

mapRobloxClasses = {}

for roblox_class in api_dump["Classes"]:
	mapRobloxClasses[roblox_class["Name"]] = roblox_class

def get_prop_type(value_type):

	prop = ""

	if value_type["Category"] == "Enum":
		prop = "Enum." + value_type["Name"]
	elif value_type["Category"] == "Class":
		prop = value_type["Name"]
	elif value_type["Category"] == "Primitive":
		value_name = value_type["Name"]
		prop = aliases.get(value_name) or value_name
	elif value_type["Category"] == "DataType":
		value_name = value_type["Name"]
		prop = aliases.get(value_name) or value_name
	elif value_type["Category"] == "Group":
		prop = value_type["Name"]

	# Map value types

	return prop

def append_class(roblox_class):
	lines.append("\t-- " + roblox_class["Name"])

	for member in roblox_class["Members"]:
		if (member.get("Tags") and "ReadOnly" in member["Tags"]) == True: continue
		if (member.get("Tags") and "Deprecated" in member["Tags"]) == True: continue
		if (member.get("Tags") and "NotScriptable" in member["Tags"]) == True: continue
		
		if member["MemberType"] == "Property":
			if member["Security"]["Write"] != "None": continue
			
			if "Deprecated" in member: continue

			lines.append("\t" + member["Name"] + ": Prop<" + get_prop_type(member["ValueType"]) + ">;")
		elif member["MemberType"] == "Event":
			if member["Security"] != "None": continue
			
			line = "\t" + member["Name"] + ": Event<("
			is_first = True
			for parameter in member["Parameters"]:
				if is_first == False:
					line += ", "
				is_first = False
				line += parameter["Name"] + ": " + get_prop_type(parameter["Type"])

			line += ") -> ()>;"
			lines.append(line)
	
	if roblox_class["Superclass"] != "<<<ROOT>>>":
		append_class(mapRobloxClasses[roblox_class["Superclass"]])

for class_name in desired_classes:
	roblox_class = mapRobloxClasses[class_name]
	name = roblox_class['Name']
	lines.append("export type props" + name + " = {")
	append_class(roblox_class)	
	lines.append("}")

dump = '\n'.join(lines)
print(dump)