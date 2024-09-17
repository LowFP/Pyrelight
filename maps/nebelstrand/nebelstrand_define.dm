/datum/map/nebelstrand
	name          = "nebelstrand"
	full_name     = "Nebelstrand"
	path          = "nebelstrand"
	station_name  = "Nebelstrand"
	station_short = "Nebelstrand"
	dock_name     = "Grey Harbor"
	boss_name     = "the Splinter Kingdoms"
	boss_short    = "Splinter Kingdoms"
	company_name  = "the Veiled Fogbound"
	company_short = "the Fogbound"
	system_name   = "Downlands"
	default_spawn = /decl/spawnpoint/arrivals
	allowed_latejoin_spawns = list(
		/decl/spawnpoint/arrivals
	)
	map_tech_level          = MAP_TECH_LEVEL_MEDIEVAL
	survival_box_choices    = list()
	passport_type           = null
	_available_backpacks    = list(
		/decl/backpack_outfit/sack
	)
	lobby_screens = list(
		'maps/nebelstrand/nebelstrand.png'
	)
	lobby_tracks = list(
		/decl/music_track/dhaka,
		/decl/music_track/teller,
		/decl/music_track/suonatore
	)
	credit_sound = list(
		'sound/music/Miris-Magic-Dance.ogg'
	)
	game_year = -914 // in 2024, the year should be 1110, roughly a century after the fall of the Imperial Aegis

	char_preview_bgstate_options = list(
		"000",
		"midgrey",
		"FFF",
		"wood"  = /turf/floor/wood::color,
		"mud",
		"grass" = /turf/floor/natural/grass::color,
		"rock"  = /turf/floor/natural/rock/basalt::color,
		"brick" = /turf/wall/brick/sandstone::color
	)

/decl/backpack_outfit/sack
	is_default = TRUE

/datum/map/nebelstrand/get_map_info()
	return "You're in the <b>[station_name]</b> of the [system_name], shrouded in perpetual mist with the [dock_name] stretching out before you. The faint toll of the Silver Bell Lighthouse echoes through the fog, and unseen dangers lurk in the depths of the sea. Bound by the influence of [boss_name], the whispers of [company_name] can be felt in every shadow. \
	In this forgotten port, survival is earned through cunning, trade, and secrets. Beware what lies beneath the waves, for not all is as it seems in [station_name]."