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

/area/nebelstrand/lighthouse
	name = "\improper Lighthouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/fog_finders
	name = "\improper Fod Finders Guild"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/fog_finders/porch
	name = "\improper Fog Finders Guild Porch"
	interior_ambient_light_modifier = -0.3 // night is pitch-black on the porch
	sound_env = FOREST

/area/nebelstrand/harbormaster
	name = "\improper Harbormaster"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/storehouse
	name = "\improper Storehouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/boathouse
	name = "\improper Boathouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/fishermen_wharf
	name = "\improper Fishermen Wharf"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/fishermen_wharf/porch
	name = "\improper Fishermen Wharf Porch"
	interior_ambient_light_modifier = -0.3 // night is pitch-black on the porch
	sound_env = FOREST

/area/nebelstrand/castle_walls
	name = "\improper Castle Walls"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM

/area/nebelstrand/outside/poi
	name = "Deep Grassland"

/area/nebelstrand/outside/ocean
	name = "Ocean"
	color = COLOR_BLUE
	description = "The breaking of waves are heard crashing against the shore."
	area_blurb_category = /area/nebelstrand/outside/ocean
	additional_fishing_results = list(
		/mob/living/simple_animal/aquatic/fish/large        = 5,
		/mob/living/simple_animal/aquatic/fish/large/salmon = 5,
		/mob/living/simple_animal/aquatic/fish/large/trout  = 5,
		/mob/living/simple_animal/aquatic/fish/large/pike   = 3
	)
