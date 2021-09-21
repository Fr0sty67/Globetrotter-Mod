extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.adds.push_back(add().set_new_group("backpackhas").add_condition({
		"condition" : "adjacent",
		"group" : "adult_friendly"
	}).animate("shake"))
	self.id = "backpack"
	self.value = 1
	self.rarity = "uncommon"
	self.texture = load_texture("res://globetrotter-mod/symbols/backpack.png")
	self.sfx = ["unwrap"]
	self.name = "Backpack"
	self.description = .get_description()
