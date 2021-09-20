extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [8]
	self.destroys.push_back(destroy().set_group("fish").set_buff("temporary_bonus", values[0], true, true).animate("bounce"))
	self.id = "pelican"
	self.value = 1
	self.rarity = "common"
	self.groups = ["organism", "animal", "bird"]
	self.sfx = ["jump"]
	self.texture = load_texture("res://globetrotter-mod/symbols/pelican.png")
	self.name = "Pelican"
	self.description = .get_description()
