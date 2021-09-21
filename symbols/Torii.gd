extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
	self.modloader = modloader
	self.id = "torii"
	self.groups = ["maidenlikes", "landmark"]
	self.texture = load_texture("res://globetrotter-mod/symbols/torii.png")
	self.name = "Torii"
