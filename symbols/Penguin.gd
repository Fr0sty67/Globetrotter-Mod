extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.id = "penguin"
	self.value = 1
	self.rarity = "common"
	self.groups = ["organism", "animal", "bird", "cold"]
	self.texture = load_texture("res://globetrotter-mod/symbols/penguin.png")
	self.name = "Penguin"
