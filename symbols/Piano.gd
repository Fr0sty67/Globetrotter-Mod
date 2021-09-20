extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.flavor_text = "...but you can't piano a tuna!"
	self.values = [3]
	self.buffs.push_back(buff().set_type("tuna").set_value(values[0]).animate("circle"))
	self.id = "piano"
	self.value = 3
	self.rarity = "rare"
	self.sfx = ["ding"]
	self.texture = load_texture("res://globetrotter-mod/symbols/piano.png")
	self.name = "Piano"
	self.description = .get_description() + .get_flavor_text()
