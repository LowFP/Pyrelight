/decl/department/nebelstrand/fogfinders
	name                    = "Fogfinders"
	colour                  = "#172a35"
	display_color           = "#3f5572"

/datum/job/nebelstrand/fogfinders
	abstract_type           = /datum/job/nebelstrand/fogfinders
	department_types        = list(/decl/department/nebelstrand/fogfinders)

/datum/job/nebelstrand/fogfinders/mistseer
	title                   = "Mistseer"
	supervisors             = "your guild and self-interest"
	description             = "You are the leader of the Fogfinders, responsible for managing the guild. Fogfinders are often responsible for guilding ships in the fog but also double as a makeshift mercenary guild."
	spawn_positions         = 1
	total_positions         = 1
	outfit_type             = /decl/outfit/job/nebelstrand/traveller
	head_position           = TRUE
	req_admin_notify        = TRUE
	guestbanned             = TRUE
	must_fill               = TRUE
	not_random_selectable   = TRUE
	min_skill               = list(
		SKILL_FINANCE       = SKILL_ADEPT, // they run the docks after all
		SKILL_LITERACY      = SKILL_BASIC, // and should know how to read a liiittle bit
		SKILL_COMBAT        = SKILL_ADEPT,
	)
	skill_points            = 22
	lock_keys = list(
		"mistseer's room" = /decl/material/solid/metal/silver,
		"fogfinder's guild"  = /decl/material/solid/metal/iron
	)

/obj/abstract/landmark/start/nebelstrand/mistseer
	name                    = "Mistseer"

/datum/job/nebelstrand/fogfinders/fogfinder
	title                   = "Fogfinder"
	supervisors             = "the mistseer"
	description             = "You are part of the Fogfinder guild, though your exact expectations are nebulous, the mistseer might have something for you. Fogfinders are often responsible for guilding ships in the fog but also double as a makeshift mercenary guild."
	spawn_positions         = 2
	total_positions         = 2
	outfit_type             = /decl/outfit/job/nebelstrand/traveller
	min_skill               = list(
		SKILL_HAULING       = SKILL_ADEPT, // Who else is gonna be moving the boxes around?
	)
	skill_points            = 18
	lock_keys = list(
		"fogfinder's guild"  = /decl/material/solid/metal/iron
	)

/obj/abstract/landmark/start/nebelstrand/fogfinder
	name                    = "Fogfinder"