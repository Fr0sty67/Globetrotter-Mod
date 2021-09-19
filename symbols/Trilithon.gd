extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [1]
	self.buffs.push_back(buff().set_type("trilithon").set_buff_type("temporary_bonus").set_target({
		"edges" : {}
	}).set_value(values[0]))
	self.id = "trilithon"
	self.value = 0
	self.rarity = "common"
	self.sfx = ["hex"]
	self.texture = load_texture("res://globetrotter-mod/symbols/trilithon.png")
	self.name = "Trilithon"
	self.description = .get_description()
