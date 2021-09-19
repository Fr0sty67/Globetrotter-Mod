extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [10]
	self.destroys.push_back(destroy().set_group("macawlikes").set_buff("temporary_bonus", values[0], true, true).animate("bounce"))
	self.id = "macaw"
	self.value = 2
	self.rarity = "uncommon"
	self.groups = ["organism", "animal", "bird"]
	self.sfx = ["aaaaa"]
	self.texture = load_texture("res://globetrotter-mod/symbols/macaw.png")
	self.name = "Macaw"
	self.description = .get_description()
