/area/nebelstrand/outside/downlands
	name = "Downlands"

/area/nebelstrand/outside/downlands/poi
	name = "Deep Downlands"

/area/nebelstrand/inn
	name = "\improper Inn"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/inn/porch
	name = "\improper Inn Porch"
	interior_ambient_light_modifier = -0.3 // night is pitch-black on the porch
	sound_env = FOREST

/area/nebelstrand/stable
	name = "\improper Stable"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/farmhouse
	name = "\improper Farmhouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/farmhouse/porch
	name = "\improper Farmhouse Porch"
	interior_ambient_light_modifier = -0.3 // night is pitch-black on the porch
	sound_env = FOREST

/area/nebelstrand/slaughterhouse
	name = "\improper Slaughterhouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/storehouse
	name = "\improper Storehouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/general_store
	name = "\improper General Store"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/general_store/porch
	name = "\improper General Store Porch"
	interior_ambient_light_modifier = -0.3 // night is pitch-black on the porch
	sound_env = FOREST

/area/nebelstrand/shrine
	name = "\improper Shrine"
	fishing_failure_prob = 100
	fishing_results = list()
	area_flags = AREA_FLAG_HOLY
	sound_env = ROOM

/area/nebelstrand/outside/shrine
	name = "\improper Shrine Grounds"

/area/nebelstrand/caves
	name = "\improper Deep Tunnels"
	color = COLOR_GRAY40
	is_outside = OUTSIDE_NO
	description = "The deep dark brings distant, whispering echoes to your ears."
	ambience = list(
		'sound/ambience/ambimine.ogg',
		'sound/ambience/song_game.ogg'
	)
	area_blurb_category = /area/nebelstrand/caves
	sound_env = CAVE
	area_flags = AREA_FLAG_IS_BACKGROUND

/area/nebelstrand/caves/deep
	name = "\improper Deep Caverns"

/area/nebelstrand/caves/deep/poi
	name = "\improper Deepest Caverns"

/area/nebelstrand/caves/dungeon
	name = "\improper Deep Dungeon"

/area/nebelstrand/caves/dungeon/inn
	name = "\improper Root Cellar"

/area/nebelstrand/caves/dungeon/poi
	name = "\improper Deepest Dungeon"
