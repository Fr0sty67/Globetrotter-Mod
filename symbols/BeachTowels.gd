extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.id = "beach_towels"
	self.value = 1
	self.rarity = "common"
	self.groups = ["vacation"]
	self.texture = load_texture("res://globetrotter-mod/symbols/beach-towels.png")
	self.name = "Beach Towels"
