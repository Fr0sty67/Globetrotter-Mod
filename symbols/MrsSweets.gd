extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [15]
	self.destroys.push_back(destroy().set_group("sweets").set_buff("temporary_bonus", values[0], true, true).animate("bounce"))
	self.id = "mrs_sweets"
	self.value = 3
	self.rarity = "rare"
	self.groups = ["organism", "human", "doglikes", "adult_friendly"]
	self.sfx = ["jump"]
	self.texture = load_texture("res://globetrotter-mod/symbols/mrs-sweets.png")
	self.name = "Mrs Sweets"
	self.description = .get_description()
