extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "mining_union_socsec"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	inherit_description = false
	display_name = "Mining Union"
	localized_names = {}
	value = 0
	description = "Dwarves and Miners Unite! 2 <icon_coin> for every active <icon_dwarf> and <icon_miner>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [	
	{"effect_type": "symbols", "comparisons": [{"a": "type", "b": "miner"}], "value_to_change": "value", "diff": 2},
	{"effect_type": "symbols", "comparisons": [{"a": "type", "b": "dwarf"}], "value_to_change": "value", "diff": 2}
	]
