extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [3]
	self.buffs.push_back(buff().set_type("moon").set_value(values[0]).animate("shake"))
	self.id = "night_sky"
	self.value = 2
	self.rarity = "uncommon"
	self.sfx = ["ding"]
	self.texture = load_texture("res://globetrotter-mod/symbols/night-sky.png")
	self.name = "Night Sky"
	self.description = .get_description()
