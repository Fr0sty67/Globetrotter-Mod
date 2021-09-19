extends "res://modloader/SymbolPatcher.gd"

var value_index: int
var _rarity: String = "rare"
func init(modloader: Reference, params):
	self.modloader = modloader
	self.id = "pirate"

func patch_rarity(rarity):
	return _rarity

func patch_description(description):
	return join(description, "<color_E14A68>Destroys<end> adjacent <icon_ninja>.")

func add_conditional_effects(symbol, adjacent):
	var ninja_adjacent : bool = false
	for i in adjacent:
		if i.type == "ninja":
			symbol.add_effect_for_symbol(i, effect().set_destroyed().animate("bounce", "", [symbol, i]))
	if ninja_adjacent:
		symbol.add_effect(effect().set_destroyed())
