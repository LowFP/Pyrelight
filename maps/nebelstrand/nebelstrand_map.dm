/datum/map/nebelstrand
	default_liquid_fuel_type = /decl/material/liquid/nutriment/plant_oil
	default_species = SPECIES_KOBALOI
	loadout_categories = list(
		/decl/loadout_category/fantasy/clothing,
		/decl/loadout_category/fantasy/utility
	)

/datum/map/nebelstrand/finalize_map_generation()
	. = ..()
	var/static/list/banned_weather = list(
		/decl/state/weather/snow/medium,
		/decl/state/weather/snow/heavy,
		/decl/state/weather/snow
	)
	var/datum/level_data/nebelstrand = SSmapping.levels_by_id["nebelstrand_grassland"]
	if(istype(nebelstrand)) // if this is false, something has badly exploded
		SSweather.setup_weather_system(nebelstrand, banned_states = banned_weather)

/decl/spawnpoint/arrivals
	name = "Queens' Road"
	spawn_announcement = null
