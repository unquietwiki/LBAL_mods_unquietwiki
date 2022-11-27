extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "conservative_socsec"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	inherit_description = false
	display_name = "Conservative"
	localized_names = {}
	value = 0
	description = "Destroys <icon_relief_check_socsec>, and gives 3 <icon_coin> to adjacent <group_gem> <group_richlikes> <group_robinhates> and <icon_dame>. Eats <icon_candy>. Drinks <group_booze>. Can be destroyed by <icon_robin_hood> for 13 <icon_coin>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = ["robinhates"]
	sfx = []
	effects = [
	{"comparisons": [{"a": "destroyed", "b": true}], "value_to_change": "value_bonus", "diff": 13},
	{"effect_type": "adjacent_symbols", "comparisons": [{"a": "groups", "b": "booze"}], "value_to_change": "destroyed", "diff": true, "anim": "rotate", "anim_targets": "adjacent_symbol", "push_front": true},
	{"effect_type": "adjacent_symbols", "comparisons": [{"a": "groups", "b": "gem"}], "value_to_change": "value_bonus", "diff": 3, "anim": "bounce", "anim_targets": "adjacent_symbol"},
	{"effect_type": "adjacent_symbols", "comparisons": [{"a": "groups", "b": "richlikes"}], "value_to_change": "value_bonus", "diff": 3, "anim": "bounce", "anim_targets": "adjacent_symbol"},
	{"effect_type": "adjacent_symbols", "comparisons": [{"a": "groups", "b": "robinhates"}], "value_to_change": "value_bonus", "diff": 3, "anim": "bounce", "anim_targets": "adjacent_symbol"},
	{"effect_type": "adjacent_symbols", "comparisons": [{"a": "type", "b": "candy"}], "value_to_change": "destroyed", "diff": true, "anim": "rotate", "anim_targets": "adjacent_symbol", "push_front": true},
	{"effect_type": "adjacent_symbols", "comparisons": [{"a": "type", "b": "dame"}], "value_to_change": "value_bonus", "diff": 3, "anim": "bounce", "anim_targets": "adjacent_symbol"},
	{"effect_type": "adjacent_symbols", "comparisons": [{"a": "type", "b": "relief_check_socsec"}], "value_to_change": "destroyed", "diff": true, "anim": "rotate", "anim_targets": "adjacent_symbol"}
	]
