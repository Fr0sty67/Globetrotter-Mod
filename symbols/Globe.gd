extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [4]
	self.buffs.push_back(buff().set_value(values[0]).set_target({
		"corner" : {}
	}).animate("rotate"))
	self.id = "globe"
	self.value = 4
	self.rarity = "very_rare"
	self.sfx = ["arrow"]
	self.texture = load_texture("res://globetrotter-mod/symbols/globe.png")
	self.name = "Globe"
	self.description = .get_description()
