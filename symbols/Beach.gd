extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [3]
	self.buffs.push_back(buff().set_group("vacation").set_value(values[0]).add_condition({
		"condition" : "adjacent",
		"target" : "any",
		"type" : "beach_umbrella",
	}).add_condition({
		"condition" : "adjacent",
		"target" : "any",
		"type" : "beach_towels",
	}).animate("circle"))
	self.id = "beach"
	self.value = 3
	self.rarity = "rare"
	self.groups = ["landmark", "vacation", "location"]
	self.sfx = ["beam"]
	self.texture = load_texture("res://globetrotter-mod/symbols/beach.png")
	self.name = "Beach"
	self.description = .get_description()
