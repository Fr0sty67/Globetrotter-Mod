extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [3]
	self.adds.push_back(add().set_new_group("capsule", "uncommon").add_condition({
		"condition" : "turns",
		"operator" : "every",
		"value": values[0]
	}).animate("circle"))
	self.id = "trunks"
	self.value = 0
	self.rarity = "rare"
	self.sfx = ["mmm"]
	self.texture = load_texture("res://globetrotter-mod/symbols/trunks.png")
	self.name = "Trunks"
	self.description = .get_description()

func update_value_text(symbol, values):
	symbol.value_text = values[0] - symbol.times_displayed
	symbol.value_text_color = "<color_E14A68>"
