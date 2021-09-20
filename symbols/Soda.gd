extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [3]
	self.adds.push_back(add().set_new_type("bubble").add_condition(
		{"condition" : "destroyed"}
	).set_quantity(values[0]))
	self.id = "soda"
	self.value = 2
	self.rarity = "uncommon"
	self.groups = ["food", "junk_food"]
	self.texture = load_texture("res://globetrotter-mod/symbols/soda.png")
	self.name = "Soda"
	self.description = .get_description()
