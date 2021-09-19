extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [2]
	self.buffs.push_back(buff().set_group("vacation").set_value(values[0]).add_condition({
		"condition" : "adjacent",
		"type" : "sun",
	}).add_condition({
		"condition" : "adjacent",
		"type" : "beach_towels",
	}).animate("bounce"))
	self.id = "beach_umbrella"
	self.value = 2
	self.rarity = "uncommon"
	self.sfx = ["beam"]
	self.groups = ["vacation"]
	self.texture = load_texture("res://globetrotter-mod/symbols/beach-umbrella.png")
	self.name = "Beach Umbrella"
	self.description = .get_description()
