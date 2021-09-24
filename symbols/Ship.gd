extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [30]
	self.adds.push_back(add().random(0).set_new_type("iceberg").add_condition({
		"condition" : "corner",
		"target" : "self"
	}).animate("bounce"))
	self.id = "ship"
	self.value = 3
	self.rarity = "uncommon"
	self.sfx = ["pop"]
	self.texture = load_texture("res://globetrotter-mod/symbols/ship.png")
	self.name = "Ship"
	self.description = .get_description()
