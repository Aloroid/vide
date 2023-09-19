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
	"type Event<T=() -> ()> = T?"
	""
]

lines_after = [
	""
	"return {}"
]

lines = []

for line in lines_before:
	lines.append(line)

API_DUMP_LINK = "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/API-Dump.json"
CORRECTIONS_LINK = "https://raw.githubusercontent.com/NightrainsRbx/RobloxLsp/master/server/api/Corrections.json"

api_dump_request = requests.get(API_DUMP_LINK)
corrections_dump_request = requests.get(CORRECTIONS_LINK)

api_dump = api_dump_request.json()
corrections_dump = corrections_dump_request.json()

aliases = {
	"int64": "number",
	"int": "number",
	"float": "number",
	"double": "number",
	"bool": "boolean",
	"Content": "string"
}

mapCorrections = {}
mapRobloxClasses = {}

for roblox_class in api_dump["Classes"]:
	mapRobloxClasses[roblox_class["Name"]] = roblox_class

for correction_class in corrections_dump["Classes"]:
	mapCorrections[correction_class["Name"]] = correction_class

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
	correction_class = mapCorrections.get(roblox_class["Name"]) or {"Members": []}
	correction_members_map = {}

	for member in correction_class["Members"]:
		correction_members_map[member["Name"]] = member
	
	for member in roblox_class["Members"]:
		if (member.get("Tags") and "ReadOnly" in member["Tags"]) == True: continue
		if (member.get("Tags") and "Deprecated" in member["Tags"]) == True: continue
		if (member.get("Tags") and "NotScriptable" in member["Tags"]) == True: continue
		
		# We check if it's a property and if it is, run the get_prop_type function.
		if member["MemberType"] == "Property":
			if member["Security"]["Write"] != "None": continue
			
			if "Deprecated" in member: continue

			lines.append("\t" + member["Name"] + ": Prop<" + get_prop_type(member["ValueType"]) + ">;")
		elif member["MemberType"] == "Event":
			if member["Security"] != "None": continue

			correction_member = correction_members_map.get(member["Name"]) or {"Parameters": []}

			correction_parameters_map = {}
			for parameter in correction_member["Parameters"]:
				correction_parameters_map[parameter["Name"]] = parameter

			line = "\t" + member["Name"] + ": Event<("
			is_first = True
			for parameter in member["Parameters"]:

				correction_parameter = correction_parameters_map.get(parameter["Name"])
				
				if is_first == False:
					line += ", "
				is_first = False

				line += parameter["Name"] + ": "

				if correction_parameter == None:
					line += get_prop_type(parameter["Type"])
				else:
					name = correction_parameter["Type"].get("Name")
					generic = correction_parameter["Type"].get("Generic")

					if name != None:
						line += name
					elif generic != None:
						line += "{" + generic + "}"

			line += ") -> ()>;"
			lines.append(line)
	
	if roblox_class["Superclass"] != "<<<ROOT>>>":
		append_class(mapRobloxClasses[roblox_class["Superclass"]])

for class_name in desired_classes:
	roblox_class = mapRobloxClasses[class_name]
	name = roblox_class['Name']
	lines.append("export type " + name + " = {")
	append_class(roblox_class)	
	lines.append("}")

dump = '\n'.join(lines)
print(dump)
print('\n'.join(lines_after))