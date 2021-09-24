extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [2]
	self.buffs.push_back(buff().set_group("cold").set_value(values[0]).animate("circle"))
	self.destroys.push_back(destroy().set_type("ship").animate("shake", 1))
	self.id = "iceberg"
	self.value = 2
	self.rarity = "uncommon"
	self.groups = ["landmark"]
	self.sfx = ["ding", "hooligan"]
	self.texture = load_texture("res://globetrotter-mod/symbols/iceberg.png")
	self.name = "Iceberg"
	self.description = .get_description()
