extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [1.2]
	self.id = "wren"
	self.value = 1
	self.rarity = "common"
	self.groups = ["organism", "animal", "bird"]
	self.texture = load_texture("res://globetrotter-mod/symbols/wren.png")
	self.name = "Wren"
	self.description = "You are <color_E14A68><values_1>x<end> more likely to find <color_38769A>Uncommon<end>, <color_F8F87B>Rare<end>, and <color_4A1369>Very Rare<end> symbols."

func add_conditional_effects(symbol, adjacent):
	var symbol_rarity = modloader.globals.pop_up.rarity_bonuses["symbols"]
	for r in ["uncommon", "rare", "very_rare"]:
		symbol.add_effect({"comparisons": [{"a": "type", "b": symbol.type}], "target": symbol_rarity, "multiply": true, "raritymod": true, "value_to_change": r, "diff": values[0]})
