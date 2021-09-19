extends "res://modloader/SymbolPatcher.gd"

var value_index: int
func init(modloader: Reference, params):
	self.modloader = modloader
	self.id = "ninja"

func patch_description(description):
	return join(description, "<color_E14A68>Destroys<end> adjacent <icon_pirate>.")

func add_conditional_effects(symbol, adjacent):
	for i in adjacent:
		symbol.add_effect_for_symbol(i, effect().if_type("pirate").set_destroyed())#.animate("bounce", "destroy", [symbol, i]))
