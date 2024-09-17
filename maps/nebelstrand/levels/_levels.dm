/obj/abstract/map_data/nebelstrand
	height = 3

/datum/level_data/player_level/nebelstrand
	use_global_exterior_ambience = FALSE
	base_area = null
	base_turf = /turf/floor/natural/dirt
	abstract_type = /datum/level_data/player_level/nebelstrand
	ambient_light_level = 1
	ambient_light_color = "#a9b4c0"
	strata = /decl/strata/nebelstrand
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
	daycycle_type = /datum/daycycle/nebelstrand
	daycycle_id = "daycycle_nebelstrand"
	template_edge_padding = 0 // we use a strictly delineated subarea, no need for this guard
	var/submap_budget   = 0
	var/submap_category = null
	var/submap_area
	var/list/mobs_to_spawn = list()

/datum/daycycle/nebelstrand
	cycle_duration = 2 HOURS // 1 hour of daylight, 1 hour of night

// Randomized time of day to start at.
/datum/daycycle/nebelstrand/New()
	time_in_cycle = rand(cycle_duration)
	..()

/datum/level_data/player_level/nebelstrand/get_subtemplate_areas(template_category, blacklist, whitelist)
	return submap_area ? (islist(submap_area) ? submap_area : list(submap_area)) : null

/datum/level_data/player_level/nebelstrand/get_subtemplate_budget()
	return submap_budget

/datum/level_data/player_level/nebelstrand/get_subtemplate_category()
	return submap_category

/datum/level_data/player_level/nebelstrand/after_generate_level()
	. = ..()
	if(length(mobs_to_spawn))
		for(var/list/mob_category in mobs_to_spawn)
			var/list/mob_types = mob_category[1]
			var/mob_turf  = mob_category[2]
			var/mob_count = mob_category[3]
			var/sanity = 1000
			while(mob_count && sanity)
				sanity--
				var/turf/place_mob_at = locate(rand(level_inner_min_x, level_inner_max_x), rand(level_inner_min_y, level_inner_max_y), level_z)
				if(istype(place_mob_at, mob_turf) && !(locate(/mob/living) in place_mob_at))
					var/mob_type = pickweight(mob_types)
					new mob_type(place_mob_at)
					mob_count--
					CHECK_TICK

/datum/level_data/player_level/nebelstrand/greyharbor
	name = "Nebelstrand - Grey Harbor"
	level_id = "nebelstrand_greyharbor"
	level_generators = list(
		/datum/random_map/automata/cave_system/nebelstrand,
		/datum/random_map/noise/ore/poor,
		/datum/random_map/noise/forage/nebelstrand/grassland
	)
	connected_levels = list(
		"nebelstrand_swamp"     = SOUTH,
		"nebelstrand_mainstreet" = EAST
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_GRASSLAND
	submap_area = /area/nebelstrand/outside/poi

	mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse        = 9,
				/mob/living/simple_animal/passive/rabbit       = 3,
				/mob/living/simple_animal/passive/rabbit/brown = 3,
				/mob/living/simple_animal/passive/rabbit/black = 3,
				/mob/living/simple_animal/opossum              = 5
			),
			/turf/floor/natural/grass,
			10
		)
	)

/datum/level_data/player_level/nebelstrand/above
	name = "Nebelstrand - Above Grey Harbor"
	level_id = "nebelstrand_above"
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_GRASSLAND
	submap_area = /area/nebelstrand/outside/poi


/datum/level_data/player_level/nebelstrand/swamp
	name = "Nebelstrand - Swamp"
	level_id = "nebelstrand_swamp"
	connected_levels = list(
		"nebelstrand_greyharbor" = NORTH
	)
	level_generators = list(
		/datum/random_map/noise/nebelstrand/swamp,
		/datum/random_map/noise/forage/nebelstrand/swamp
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_SWAMP
	submap_area = /area/nebelstrand/outside/swamp/poi

	mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse        = 6,
				/mob/living/simple_animal/passive/rabbit       = 2,
				/mob/living/simple_animal/passive/rabbit/brown = 2,
				/mob/living/simple_animal/passive/rabbit/black = 2,
				/mob/living/simple_animal/frog                 = 3,
				/mob/living/simple_animal/frog/brown           = 2,
				/mob/living/simple_animal/frog/yellow          = 2,
				/mob/living/simple_animal/frog/purple          = 1
			),
			/turf/floor/natural/grass,
			5
		),
		list(
			list(
				/mob/living/simple_animal/frog                 = 3,
				/mob/living/simple_animal/frog/brown           = 2,
				/mob/living/simple_animal/frog/yellow          = 2,
				/mob/living/simple_animal/frog/purple          = 1
			),
			/turf/floor/natural/mud,
			10
		)
	)

/datum/level_data/player_level/nebelstrand/woods
	name = "Nebelstrand - Woods"
	level_id = "nebelstrand_woods"
	connected_levels = list(
		"nebelstrand_mainstreet" = WEST
	)
	level_generators = list(
		/datum/random_map/noise/nebelstrand/woods,
		/datum/random_map/noise/forage/nebelstrand/woods
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_WOODS
	submap_area = /area/nebelstrand/outside/woods/poi

	mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse        = 6,
				/mob/living/simple_animal/passive/rabbit       = 2,
				/mob/living/simple_animal/passive/rabbit/brown = 2,
				/mob/living/simple_animal/passive/rabbit/black = 2,
				/mob/living/simple_animal/opossum              = 2
			),
			/turf/floor/natural/grass,
			10
		),
		list(
			list(
				/mob/living/simple_animal/passive/deer         = 1
			),
			/turf/floor/natural/grass,
			5
		)
	)

/datum/level_data/player_level/nebelstrand/mainstreet
	name = "Nebelstrand - Mainstreet"
	level_id = "nebelstrand_mainstreet"
	level_generators = list(
		/datum/random_map/noise/nebelstrand/woods,
		/datum/random_map/noise/forage/nebelstrand/grassland
	)
	connected_levels = list(
		"nebelstrand_greyharbor" = WEST,
		"nebelstrand_woods"     = EAST
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_DOWNLANDS
	submap_area = /area/nebelstrand/outside/downlands/poi

/datum/level_data/player_level/nebelstrand/caverns
	name = "Nebelstrand - Caverns"
	level_id = "nebelstrand_caverns"
	connected_levels = list(
		"nebelstrand_dungeon" = WEST
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_CAVERNS
	submap_area = /area/nebelstrand/caves/deep/poi
	level_generators = list(
		/datum/random_map/automata/cave_system/nebelstrand,
		/datum/random_map/noise/ore/rich
	)
	base_turf = /turf/floor/natural/rock/basalt

/datum/level_data/player_level/nebelstrand/dungeon
	name = "Nebelstrand - Dungeon"
	level_id = "nebelstrand_dungeon"
	connected_levels = list(
		"nebelstrand_caverns" = EAST
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_DUNGEON
	submap_area = /area/nebelstrand/caves/dungeon/poi
	base_turf = /turf/floor/natural/rock/basalt

/obj/abstract/level_data_spawner/nebelstrand_greyharbor
	level_data_type = /datum/level_data/player_level/nebelstrand/greyharbor

/obj/abstract/level_data_spawner/nebelstrand_above
	level_data_type = /datum/level_data/player_level/nebelstrand/above

/obj/abstract/level_data_spawner/nebelstrand_swamp
	level_data_type = /datum/level_data/player_level/nebelstrand/swamp

/obj/abstract/level_data_spawner/nebelstrand_woods
	level_data_type = /datum/level_data/player_level/nebelstrand/woods

/obj/abstract/level_data_spawner/nebelstrand_mainstreet
	level_data_type = /datum/level_data/player_level/nebelstrand/mainstreet

/obj/abstract/level_data_spawner/nebelstrand_caverns
	level_data_type = /datum/level_data/player_level/nebelstrand/caverns

/obj/abstract/level_data_spawner/nebelstrand_dungeon
	level_data_type = /datum/level_data/player_level/nebelstrand/dungeon
