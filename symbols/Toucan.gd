extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.flavor_text = "Can one tango? \nNo, but Toucan!"
	self.values = [4]
	self.buffs.push_back(buff().set_type("toucan").set_value(values[0]).add_condition({
		"condition" : "adjacent",
		"operator" : "exactly",
		"type" : "toucan",
		"value" : 1
	}).animate("circle"))
	self.id = "toucan"
	self.value = 2
	self.rarity = "rare"
	self.groups = ["organism", "animal", "bird"]
	self.sfx = ["shine"]
	self.texture = load_texture("res://globetrotter-mod/symbols/toucan.png")
	self.name = "Toucan"
	self.description = .get_description() + .get_flavor_text()
