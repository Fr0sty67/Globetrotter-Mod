extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [3]
	self.buffs.push_back(buff().set_type("island_head").set_buff_type("temporary_multiplier").set_target({
		"self" : {}
	}).set_value(values[0]).add_condition({
		"condition" : "adjacent",
		"type" : "island_head",
		"operator" : "at_least",
		"value" : 2
	}))
	self.id = "island_head"
	self.value = 2
	self.rarity = "uncommon"
	self.sfx = ["beam"]
	self.groups = ["landmark"]
	self.texture = load_texture("res://globetrotter-mod/symbols/island-head.png")
	self.name = "Island Head"
	self.description = .get_description()
