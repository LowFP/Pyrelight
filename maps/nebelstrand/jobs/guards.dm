/decl/department/nebelstrand/guard
	name                    = "Guards"
	colour                  = "#15166e"
	display_color           = "#2c39aa"

/datum/job/nebelstrand/guard
	abstract_type           = /datum/job/nebelstrand/guard
	department_types        = list(/decl/department/nebelstrand/guard)

/datum/job/nebelstrand/guard/mistseer
	title                   = "Town Captian"
	supervisors             = "your vows to Nebelstrand"
	description             = "You are the head of the Town Guard, overseeing the safety and order of the town. You command the guards and ensures the town's protection, though their loyalty can be swayed by the undercurrents of the town."
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
		"guard's" = /decl/material/solid/metal/silver,
	)

/obj/abstract/landmark/start/nebelstrand/mistseer
	name                    = "Town Captain"

/datum/job/nebelstrand/guard/guard
	title                   = "Town Guard"
	supervisors             = "Town Captain"
	description             = "You are part of the law enforcement of Nebelstrand, tasked with maintaining order."
	spawn_positions         = 2
	total_positions         = 2
	outfit_type             = /decl/outfit/job/nebelstrand/traveller
	min_skill               = list(
		SKILL_HAULING       = SKILL_ADEPT, // Who else is gonna be moving the boxes around?
	)
	skill_points            = 18
	lock_keys = list(
		"guard's" = /decl/material/solid/metal/silver,
	)

/obj/abstract/landmark/start/nebelstrand/guard
	name                    = "Town Guard"