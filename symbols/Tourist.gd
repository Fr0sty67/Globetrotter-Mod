extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [1]
	self.buffs.push_back(buff().set_buff_type("permanent_bonus").set_target({"self" : {}}).add_condition({
		"condition" : "adjacent",
		"group" : "landmark",
	}).set_value(values[0]).animate("circle"))
	self.id = "tourist"
	self.value = 1
	self.rarity = "rare"
	self.groups = ["organism", "human", "doglikes", "adult_friendly"]
	self.sfx = ["mmm"]
	self.texture = load_texture("res://globetrotter-mod/symbols/tourist.png")
	self.name = "Tourist"
	self.description = .get_description()
