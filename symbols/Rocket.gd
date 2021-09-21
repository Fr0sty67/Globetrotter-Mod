extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.destroys.push_back(destroy().set_target({"above" : {}}).consumes().animate("shake"))
	self.adds.push_back(add().set_new_type("fireworks").add_condition({
		"condition" : "destroyed"
	}))
	self.id = "rocket"
	self.value = 2
	self.rarity = "rare"
	self.sfx = ["sizzle"]
	self.groups = ["backpackhas"]
	self.texture = load_texture("res://globetrotter-mod/symbols/rocket.png")
	self.name = "Rocket"
	self.description = .get_description()
