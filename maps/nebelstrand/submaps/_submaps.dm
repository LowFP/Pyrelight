#define MAP_TEMPLATE_CATEGORY_SH_GRASSLAND "template_sh_grassland"
#define MAP_TEMPLATE_CATEGORY_SH_SWAMP     "template_sh_swamp"
#define MAP_TEMPLATE_CATEGORY_SH_WOODS     "template_sh_woods"
#define MAP_TEMPLATE_CATEGORY_SH_DOWNLANDS "template_sh_downlands"
#define MAP_TEMPLATE_CATEGORY_SH_DUNGEON   "template_sh_dungeon"
#define MAP_TEMPLATE_CATEGORY_SH_CAVERNS   "template_sh_caverns"

/datum/map_template/nebelstrand
	abstract_type = /datum/map_template/nebelstrand
	template_parent_type = /datum/map_template/nebelstrand
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS
	area_usage_test_exempted_root_areas = list(
		/area/nebelstrand/outside/point_of_interest
	)
	var/cost = 1

/datum/map_template/nebelstrand/get_template_cost()
	return cost

/area/nebelstrand/outside/point_of_interest
	name = "Point Of Interest"
	description = null
	area_blurb_category = /area/nebelstrand/outside/point_of_interest
