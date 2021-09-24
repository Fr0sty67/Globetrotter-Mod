extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [1, 3]
	self.destroys.push_back(destroy().set_type("tuna").set_buff("permanent_bonus", values[0]).animate("bounce", 0))
	self.buffs.push_back(buff().set_buff_type("temporary_bonus").set_target({
		"adjacent" : {}
	}).set_value(values[1]).set_group("bears"))
	self.id = "polar_bear"
	self.value = 1
	self.rarity = "rare"
	self.groups = ["organism", "animal", "cold", "bears"]
	self.sfx = ["jump"]
	self.texture = load_texture("res://globetrotter-mod/symbols/polar-bear.png")
	self.name = "Polar Bear"
	self.description = .get_description()
