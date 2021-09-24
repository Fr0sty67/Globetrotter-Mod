extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [2]
	self.buffs.push_back(buff().set_buff_type("temporary_bonus").set_target({"self" :{}}).add_condition({
		"condition" : "row",
		"target" : "self",
		"index" : 3
	}).set_value(values[0]))
	self.id = "squid"
	self.value = 1
	self.rarity = "common"
	self.groups = ["organism", "animal", "fish", "cold"]
	self.texture = load_texture("res://globetrotter-mod/symbols/squid.png")
	self.name = "Squid"
	self.description = .get_description()
