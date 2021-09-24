extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [2]
	self.buffs.push_back(buff().set_group("adult_friendly").set_buff_type("permanent_bonus").set_value(values[0]).consumes().animate("bounce"))
	self.id = "toasted_marshmallow"
	self.value = 3
	self.rarity = "rare"
	self.groups = ["food", "sweets"]
	self.texture = load_texture("res://globetrotter-mod/symbols/toasted-marshmallow.png")
	self.name = "Toasted Marshmallow"
	self.description = .get_description()
