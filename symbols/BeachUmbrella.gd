extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.id = "beach_umbrella"
	self.value = 2
	self.rarity = "uncommon"
	self.groups = ["vacation"]
	self.texture = load_texture("res://globetrotter-mod/symbols/beach-umbrella.png")
	self.name = "Beach Umbrella"
