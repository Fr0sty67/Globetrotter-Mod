extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.transforms.push_back(transform().set_type("coin").set_new_group("vendingmachinehas", "uncommon").animate("shake"))
	self.adds.push_back(add().set_new_group("vendingmachinehas", "uncommon").add_condition({
		"condition" : "adjacent",
		"type" : "hooligan"
	}).animate("shake", 1))
	self.id = "vending_machine"
	self.value = 3
	self.rarity = "rare"
	self.texture = load_texture("res://globetrotter-mod/symbols/vending-machine.png")
	self.sfx = ["unlock", "hooligan"]
	self.name = "Vending Machine"
	self.description = .get_description()
