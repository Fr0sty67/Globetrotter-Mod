extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [3]
	self.buffs.push_back(buff().set_value(values[0]).set_group("adult_friendly").set_target({
		"edge" : {"not" : true}
	}).animate("circle").simultaneous())
	self.id = "city"
	self.value = 5
	self.rarity = "very_rare"
	self.groups = ["landmark", "location"]
	self.sfx = ["ding"]
	self.texture = load_texture("res://globetrotter-mod/symbols/city.png")
	self.name = "City"
	self.description = .get_description()
