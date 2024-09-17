/datum/random_map/automata/cave_system/nebelstrand
	descriptor          = "Nebelstrand caves"
	floor_type          = /turf/floor/natural/rock/basalt
	wall_type           = /turf/wall/natural/basalt/nebelstrand
	sparse_mineral_turf = /turf/wall/natural/random/basalt/nebelstrand
	rich_mineral_turf   = /turf/wall/natural/random/high_chance/basalt/nebelstrand

/datum/random_map/noise/nebelstrand
	abstract_type = /datum/random_map/noise/nebelstrand
	smoothing_iterations = 1
	smooth_single_tiles  = TRUE
	target_turf_type = /turf/unsimulated/mask

/datum/random_map/noise/nebelstrand/swamp
	descriptor           = "Nebelstrand swamp"

/datum/random_map/noise/nebelstrand/swamp/get_appropriate_path(var/value)
	value = noise2value(value)
	if(value <= 3)
		return /turf/floor/natural/mud/water/deep
	if(value <= 5)
		return /turf/floor/natural/mud/water
	if(value <= 7)
		return /turf/floor/natural/mud
	return /turf/floor/natural/grass

/datum/random_map/noise/nebelstrand/woods
	descriptor = "Nebelstrand Woods"

/datum/random_map/noise/nebelstrand/woods/get_appropriate_path(var/value)
	value = noise2value(value)
	if(value <= 6)
		return /turf/floor/natural/grass/wild
	return /turf/floor/natural/grass

// TODO
/datum/random_map/noise/forage/nebelstrand
	abstract_type = /datum/random_map/noise/forage/nebelstrand

/datum/random_map/noise/forage/nebelstrand/grassland/New()
	forage["grass"] |= list(
		"yarrow",
		"valerian"
	)
	..()

/datum/random_map/noise/forage/nebelstrand/swamp
	tree_weight = 4
	trees = list(
		/obj/structure/flora/tree/hardwood/walnut = 1,
		/obj/structure/flora/tree/dead/walnut = 2,
		/obj/structure/flora/bush = 4,
		/obj/structure/flora/bush/leafybush = 5,
		/obj/structure/flora/bush/grassybush = 5,
		/obj/structure/flora/bush/stalkybush = 5,
		/obj/structure/flora/bush/reedbush = 6,
		/obj/structure/flora/bush/fernybush = 6,
	)

/datum/random_map/noise/forage/nebelstrand/swamp/New()
	forage["grass"] |= list(
		"aloe",
		"foxglove"
	)
	forage["riverbed"] = list(
		// the swamp doesn't really have enough flowing water for molluscs to live here or for flint to wash up
		"algae"
	)
	forage["riverbank"] = list(
		"harebells",
		"lavender",
		"nettle",
		"algae",
		"mushrooms"
	)
	return ..()

/datum/random_map/noise/forage/nebelstrand/woods
	tree_weight = 7
	trees = list(
		/obj/structure/flora/tree/hardwood/walnut = 8,
		/obj/structure/flora/tree/hardwood/yew = 8,
		/obj/structure/flora/tree/hardwood/mahogany = 8,
		/obj/structure/flora/bush/pointybush = 5,
		/obj/structure/flora/tree/dead/walnut = 1,
		/obj/structure/flora/tree/dead/yew = 1,
		/obj/structure/flora/tree/dead/mahogany = 1,
		/obj/structure/flora/bush/genericbush = 1,
		/obj/structure/flora/bush/grassybush = 1,
		/obj/structure/flora/bush/stalkybush = 1,
		/obj/structure/flora/bush/reedbush = 1,
		/obj/structure/flora/bush/fernybush = 1,
	)

/datum/random_map/noise/forage/nebelstrand/woods/New()
	forage["grass"] |= list(
		"ginseng",
		"foxglove"
	)
	..()
