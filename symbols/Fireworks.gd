extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [4]
	self.buffs.push_back(buff().set_group("adult_friendly").set_value(values[0]).add_condition({
		"condition" : "symbol_count",
		"type" : "night_sky",
		"operator" : "at_least"
	}).animate("shake"))
	self.id = "fireworks"
	self.value = 2
	self.rarity = "rare"
	self.sfx = ["crackle"]
	self.texture = load_texture("res://globetrotter-mod/symbols/fireworks.png")
	self.name = "Fireworks"
	self.description = .get_description()
