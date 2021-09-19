extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [3]
	self.buffs.push_back(buff().set_group("bird").set_value(values[0]).animate("circle"))
	self.id = "binoculars"
	self.value = 2
	self.rarity = "rare"
	self.sfx = ["whistle"]
	self.texture = load_texture("res://globetrotter-mod/symbols/binoculars.png")
	self.name = "Binoculars"
	self.description = .get_description()
