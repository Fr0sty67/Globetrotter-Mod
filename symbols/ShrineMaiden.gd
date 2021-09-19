extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [3, 25]
	self.buffs.push_back(buff().set_group("maidenlikes").set_value(values[0]).animate("circle", 0))
	self.destroys.push_back(destroy().set_type("spirit").set_buff("temporary_bonus", values[1]).animate("shake", 1))
	self.id = "shrine_maiden"
	self.value = 3
	self.rarity = "rare"
	self.groups = ["organism", "human", "doglikes", "adult_friendly"]
	self.sfx = ["ding", "spirit"]
	self.texture = load_texture("res://globetrotter-mod/symbols/shrine-maiden.png")
	self.name = "Shrine Maiden"
	self.description = .get_description()
