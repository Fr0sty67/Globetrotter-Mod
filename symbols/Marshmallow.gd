extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.id = "marshmallow"
	self.value = 2
	self.rarity = "uncommon"
	self.groups = ["food", "vendingmachine", "backpackhas"]
	self.texture = load_texture("res://globetrotter-mod/symbols/marshmallow.png")
	self.name = "Marshmallow"
