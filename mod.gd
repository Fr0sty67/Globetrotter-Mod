extends Reference


const mod_name : String = "globetrotter-mod"


func load(modloader: Reference, mod_info, tree: SceneTree):
	# path to symbol
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Backpack.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/BeachTowels.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/BeachUmbrella.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Binoculars.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Cactus.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Campfire.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/ChocolateBar.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/DrPepper.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Fireworks.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/FishingRod.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Globe.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/IslandHead.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Kombi.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Macaw.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Marshmallow.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/NightSky.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Oni.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Pelican.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Piano.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Rocket.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/RouteMarker.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/ShrineMaiden.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Shuriken.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Soda.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/ToastedMarshmallow.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Torii.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Toucan.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Tourist.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Trilithon.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Trunks.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Tumbleweed.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Tuna.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/VendingMachine.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/WaterBottle.gd")
	modloader.add_mod_symbol("res://" + mod_name + "/symbols/Wren.gd")

	# path to patch
	# groups
	var gambling = [
		"d3", "d5",
	]
	for i in gambling:
		modloader.add_symbol_patch("res://" + mod_name + "/symbols/patches/Group.gd", {"id": i, "group": "gambling"})
	
	var maidenlikes = [
		"flower", "tomb", "ninja",
	]
	for i in maidenlikes:
		modloader.add_symbol_patch("res://" + mod_name + "/symbols/patches/Group.gd", {"id": i, "group": "maidenlikes"})
	
	var macawlikes = [
		"flower", "peach", "seed",
	]
	for i in macawlikes:
		modloader.add_symbol_patch("res://" + mod_name + "/symbols/patches/Group.gd", {"id": i, "group": "macawlikes"})
	
	var vacation = [
		"coconut", "coconut_half", "crab", "sun", "watermelon",
	]
	for i in vacation:
		modloader.add_symbol_patch("res://" + mod_name + "/symbols/patches/Group.gd", {"id": i, "group": "vacation"})
	
	var adult_friendly = [
		"beastmaster", "card_shark", "chef", "comedian", "diver", "dwarf", "farmer",
		"geologist", "joker", "king_midas", "miner", "monkey", "mrs_fruit", 
	]
	for i in adult_friendly:
		modloader.add_symbol_patch("res://" + mod_name + "/symbols/patches/Group.gd", {"id": i, "group": "adult_friendly"})
	
	var fish = [
		"crab", "goldfish",
	]
	for i in fish:
		modloader.add_symbol_patch("res://" + mod_name + "/symbols/patches/Group.gd", {"id": i, "group": "fish"})
	
	var backpackhas = [
		"banana", "coin",
	]
	for i in backpackhas:
		modloader.add_symbol_patch("res://" + mod_name + "/symbols/patches/Group.gd", {"id": i, "group": "backpackhas"})
	
	modloader.add_symbol_patch("res://" + mod_name + "/symbols/patches/Ninja.gd")
	modloader.add_symbol_patch("res://" + mod_name + "/symbols/patches/Pirate.gd")
