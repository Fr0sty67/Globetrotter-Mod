extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [3]
	self.buffs.push_back(buff().set_group("gambling").set_value(values[0]).add_condition({
		"condition" : "item",
		"type" : "lucky_dice"
	}).animate("circle"))
	self.id = "oni_mask"
	self.value = 0
	self.rarity = "rare"
	self.groups = ["organism"]
	self.sfx = ["beastmaster"]

	self.texture = load_texture("res://globetrotter-mod/symbols/oni.png")
	self.name = "Oni Mask"
	self.description = .get_description()
