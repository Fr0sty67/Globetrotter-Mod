extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.adds.push_back(add().set_new_group("fish").add_condition({
		"condition" : "adjacent",
		"group" : "adult_friendly"
	}).animate("shake"))
	self.id = "fishing_rod"
	self.value = 2
	self.rarity = "uncommon"
	self.texture = load_texture("res://globetrotter-mod/symbols/fishing-rod.png")
	self.sfx = ["bubbling"]
	self.name = "Fishing Rod"
	self.description = .get_description()
