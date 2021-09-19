extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [1, 15]
	self.destroys.push_back(destroy().set_type("soda").set_buff("temporary_bonus", values[1]).animate("bounce"))
	self.id = "dr_pepper"
	self.value = 1
	self.rarity = "uncommon"
	self.groups = ["organism", "human", "doglikes", "adult_friendly"]
	self.sfx = ["drink"]
	self.texture = load_texture("res://globetrotter-mod/symbols/dr-pepper.png")
	self.name = "Dr. Pepper"
	self.description = join("Gives <icon_coin><color_FBF236><value_1><end> more for each <icon_red_pepper> (any kind)", .get_description())

func add_conditional_effects(symbol, adjacent):
	.add_conditional_effects(symbol, adjacent)
	symbol.add_effect_for_symbol(symbol, effect().change_value_bonus(modloader.globals.items.total_peppers))
