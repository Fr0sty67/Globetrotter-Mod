extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [4]
	self.buffs.push_back(buff().set_type("cactus").set_buff_type("temporary_bonus").set_target({
		"column" : {}
	}).set_value(values[0]))
	self.id = "cactus"
	self.value = 1
	self.rarity = "common"
	self.sfx = ["farmer"]
	self.texture = load_texture("res://globetrotter-mod/symbols/cactus.png")
	self.name = "Cactus"
	self.description = .get_description()
