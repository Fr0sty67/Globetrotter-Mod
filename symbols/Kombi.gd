extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [1]
	self.destroys.push_back(destroy().set_group("adult_friendly").set_buff("permanent_bonus", values[0], true, true).animate("bounce"))
	self.id = "kombi"
	self.value = 5
	self.rarity = "very_rare"
	self.sfx = ["matryoshka"]
	self.texture = load_texture("res://globetrotter-mod/symbols/kombi.png")
	self.name = "Kombi Van"
	self.description = "Hop in and go on a holiday! (Legally seats 8, but who's counting...?)"
