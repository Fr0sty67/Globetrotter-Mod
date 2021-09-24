extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [2]
	self.buffs.push_back(buff().set_group("adult_friendly").set_buff_type("permanent_multiplier").set_value(values[0]).consumes().animate("bounce"))
	self.id = "chocolate_bar"
	self.value = 4
	self.rarity = "very_rare"
	self.groups = ["food", "vendingmachinehas", "sweets"]
	self.sfx = ["jump"]
	self.texture = load_texture("res://globetrotter-mod/symbols/chocolate-bar.png")
	self.name = "Chocolate Bar"
	self.description = .get_description()
