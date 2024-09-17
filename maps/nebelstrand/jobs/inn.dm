/decl/department/nebelstrand/inn
	name                    = "Inn Workers"
	colour                  = "#404e68"
	display_color           = "#8c96c4"

/datum/job/nebelstrand/inn
	abstract_type           = /datum/job/nebelstrand/inn
	department_types        = list(/decl/department/nebelstrand/inn)

/datum/job/nebelstrand/inn/innkeeper
	title                   = "Innkeeper"
	supervisors             = "your business and self-interest"
	description             = "You are the proprietor of the Misty Mug Tavern, directing your employees and ensuring guests are treated properly, whatever you think that may mean."
	spawn_positions         = 1
	total_positions         = 1
	outfit_type             = /decl/outfit/job/nebelstrand/innkeeper
	head_position           = TRUE
	req_admin_notify        = TRUE
	guestbanned             = TRUE
	must_fill               = TRUE
	not_random_selectable   = TRUE
	min_skill               = list(
		// notably: no athletics requirement, and no literacy requirement but i'm less certain on that
		SKILL_FINANCE       = SKILL_BASIC, // at least competent enough to keep the inn running
		SKILL_COOKING       = SKILL_ADEPT, // and should at least be skilled enough to run the inn on their own
	)
	max_skill               = list(
		SKILL_CHEMISTRY     = SKILL_ADEPT, // a bit more leeway than most jobs, but still not as good as the herbalist
	)
	skill_points            = 22
	lock_keys = list(
		"inn back room" = /decl/material/solid/metal/silver,
		"inn interior"  = /decl/material/solid/metal/copper,
		"inn exterior"  = /decl/material/solid/metal/iron
	)

/obj/abstract/landmark/start/nebelstrand/innkeeper
	name                    = "Innkeeper"

/datum/job/nebelstrand/inn/inn_worker
	title                   = "Inn Worker"
	supervisors             = "the innkeeper"
	description             = "You work at the inn, though your exact duties are nebulous. You may be a cook in the kitchen, someone who keeps the lanterns lit and the furniture from falling apart, or something else entirely; either way, you have to earn your keep."
	spawn_positions         = 3
	total_positions         = 3
	outfit_type             = /decl/outfit/job/nebelstrand/inn_worker
	min_skill               = list(
		SKILL_HAULING       = SKILL_BASIC, // must be fit enough to do basic tasks around the inn
		SKILL_COOKING       = SKILL_BASIC, // and should be skilled enough to do basic cooking/farming work
		SKILL_BOTANY        = SKILL_BASIC,
	)
	skill_points            = 18
	lock_keys = list(
		"inn interior" = /decl/material/solid/metal/copper,
		"inn exterior" = /decl/material/solid/metal/iron
	)

/obj/abstract/landmark/start/nebelstrand/inn_worker
	name                    = "Inn Worker"

/datum/job/nebelstrand/inn/bartender
	title                   = "Bartender"
	supervisors             = "the innkeeper"
	description             = "You work the bar at the inn and ensure that patrons are fed, slaked, and merry. If you keep the hearth lit and prepare fresh food and drink, you will certainly earn your keep."
	spawn_positions         = 2
	total_positions         = 2
	outfit_type             = /decl/outfit/job/nebelstrand/bartender
	min_skill               = list(
		SKILL_COOKING       = SKILL_EXPERT // skilled with food and drink
	)
	skill_points            = 18
	lock_keys = list(
		"inn interior" = /decl/material/solid/metal/copper,
		"inn exterior" = /decl/material/solid/metal/iron
	)

/obj/abstract/landmark/start/nebelstrand/bartender
	name                    = "Bartender"
