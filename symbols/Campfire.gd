extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [2]
	self.transforms.push_back(transform().set_type("marshmallow").set_new_type("toasted_marshmallow").set_target({
		"above" : {}
	}).animate("shake"))
	self.buffs.push_back(buff().set_group("organism").set_value(values[0]).set_target({"row" : {}}).animate("circle"))
	self.id = "campfire"
	self.value = 2
	self.rarity = "uncommon"
	self.sfx = ["sizzle"]
	self.texture = load_texture("res://globetrotter-mod/symbols/campfire.png")
	self.name = "Campfire"
	self.description = .get_description()
