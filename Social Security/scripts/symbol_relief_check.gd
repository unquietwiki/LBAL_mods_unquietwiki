extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "relief_check_socsec"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	inherit_description = false
	display_name = "Relief Check"
	localized_names = {}
	value = 1
	description = "A relief payment from the government. Gives 1 <icon_coin> per turn, plus 2 <icon_coin> per adjacent <group_human>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [
	{"comparisons": [{"a": "destroyed", "b": true}], "value_to_change": "value_bonus", "diff": 2},
	{"effect_type": "adjacent_symbols", "comparisons": [{"a": "groups", "b": "human"}], "value_to_change": "value", "diff": 2, "anim": "bounce", "anim_targets": "adjacent_symbol"}
	]
