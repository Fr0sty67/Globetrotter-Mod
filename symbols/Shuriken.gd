extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [2]
	self.buffs.push_back(buff().set_type("ninja").set_value(values[0]).animate("jump", 1))
	self.destroys.push_back(destroy().set_type("thief").set_target({"diagonal" : {}}).animate("rotate"))
	self.id = "shuriken"
	self.value = 3
	self.rarity = "rare"
	self.sfx = ["twang", "arrow"]
	self.texture = load_texture("res://globetrotter-mod/symbols/shuriken.png")
	self.name = "Shuriken"
	self.description = .get_description()
