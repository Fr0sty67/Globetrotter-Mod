extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [1]
	self.buffs.push_back(buff().set_type("empty").set_buff_type("temporary_bonus").set_target({
		"row" : {}
	}).set_value(values[0]).animate("rotate").simultaneous())
	self.id = "tumbleweed"
	self.value = 0
	self.rarity = "common"
	self.sfx = ["farmer"]
	self.texture = load_texture("res://globetrotter-mod/symbols/tumbleweed.png")
	self.name = "Tumbleweed"
	self.description = .get_description()
