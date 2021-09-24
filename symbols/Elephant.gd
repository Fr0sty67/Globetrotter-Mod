extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.destroys.push_back(destroy().set_target({"row" : {}}).consumes().add_condition({
		"condition" : "adjacent",
		"target" : "any",
		"operator" : "at_least",
		"value" : 1,
		"type" : "mouse"
	}).animate("rotate"))
	self.id = "elephant"
	self.value = 4
	self.rarity = "rare"
	self.sfx = ["peelslip"]
	self.groups = ["animal", "organism"]
	self.texture = load_texture("res://globetrotter-mod/symbols/elephant.png")
	self.name = "Elephant"
	self.description = .get_description()
