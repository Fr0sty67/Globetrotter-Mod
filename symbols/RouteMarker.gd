extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

func init(modloader: Reference, params):
	.init(modloader, params)
	self.values = [7]
	self.adds.push_back(add().set_new_type("cactus").random(0).animate("rotate"))
	self.id = "route_marker"
	self.value = 1
	self.rarity = "common"
	self.sfx = ["beam"]
	self.groups = ["landmark"]
	self.texture = load_texture("res://globetrotter-mod/symbols/route-marker.png")
	self.name = "Route Marker"
	self.description = .get_description()
