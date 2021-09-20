extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.flavor_text = "You can tuna piano..."
	self.values = [2]
	self.buffs.push_back(buff().set_type("piano").set_value(values[0]).animate("bounce"))
	self.id = "tuna"
	self.value = 2
	self.rarity = "uncommon"
	self.groups = ["organism", "animal", "fish"]
	self.sfx = ["pop"]
	self.texture = load_texture("res://globetrotter-mod/symbols/tuna.png")
	self.name = "Tuna"
	self.description = .get_description() + .get_flavor_text()
