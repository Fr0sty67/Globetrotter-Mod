extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [2]
	self.buffs.push_back(buff().set_group("adult_friendly").set_buff_type("permanent_bonus").set_value(values[0]).add_condition({
		"condition" : "symbol_count",
		"type" : "sun",
		"operator" : "at_least",
		"value": 1
	}).consumes().animate("shake"))
	self.id = "water_bottle"
	self.value = 1
	self.rarity = "common"
	self.sfx = ["drink"]
	self.groups = ["food", "vendingmachinehas", "backpackhas"]
	self.texture = load_texture("res://globetrotter-mod/symbols/water-bottle.png")
	self.name = "Water Bottle"
	self.description = .get_description()
