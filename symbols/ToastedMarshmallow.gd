extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [2]
	self.buffs.push_back(buff().set_group("doglikes").set_buff("permanent_bonus", values[0]).consumes())
	self.id = "toasted_marshmallow"
	self.value = 3
	self.rarity = "rare"
	self.groups = ["food"]
	self.texture = load_texture("res://globetrotter-mod/symbols/toasted-marshmallow.png")
	self.name = "Toasted Marshmallow"
