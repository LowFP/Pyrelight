/datum/job/nebelstrand/caves
	abstract_type           = /datum/job/nebelstrand/caves

/datum/job/nebelstrand/caves/dweller
	title                   = "Cave Dweller"
	spawn_positions         = -1
	total_positions         = -1
	outfit_type             = /decl/outfit/job/nebelstrand/cave_dweller
	max_skill               = list(
		SKILL_MEDICAL       = SKILL_MAX,
		SKILL_ANATOMY       = SKILL_MAX,
		SKILL_CHEMISTRY     = SKILL_MAX,
	)
	skill_points            = 24

/obj/abstract/landmark/start/nebelstrand/cave_dweller
	name                    = "Cave Dweller"