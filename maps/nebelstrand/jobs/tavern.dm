/decl/department/nebelstrand/tavern
	name                    = "Tavern Workers"
	colour                  = "#404e68"
	display_color           = "#8c96c4"

/datum/job/nebelstrand/tavern
	abstract_type           = /datum/job/nebelstrand/tavern
	department_types        = list(/decl/department/nebelstrand/tavern)

/datum/job/nebelstrand/tavern/tavernkeeper
	title                   = "Tavernkeeper"
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
		SKILL_FINANCE       = SKILL_BASIC, // at least competent enough to keep the tavern running
		SKILL_COOKING       = SKILL_ADEPT, // and should at least be skilled enough to run the tavern on their own
	)
	max_skill               = list(
		SKILL_CHEMISTRY     = SKILL_ADEPT, // a bit more leeway than most jobs, but still not as good as the herbalist
	)
	skill_points            = 22
	lock_keys = list(
		"tavern back room" = /decl/material/solid/metal/silver,
		"tavern interior"  = /decl/material/solid/metal/copper,
		"tavern exterior"  = /decl/material/solid/metal/iron
	)

/obj/abstract/landmark/start/nebelstrand/tavernkeeper
	name                    = "Tavernkeeper"

/datum/job/nebelstrand/tavern/tavern_worker
	title                   = "Tavern Worker"
	supervisors             = "the tavernkeeper"
	description             = "You work at the Misty Mug Tavern, though your exact duties are nebulous. You may be a cook in the kitchen, someone who keeps the lanterns lit and the furniture from falling apart, or something else entirely; either way, you have to earn your keep."
	spawn_positions         = 3
	total_positions         = 3
	outfit_type             = /decl/outfit/job/nebelstrand/inn_worker
	min_skill               = list(
		SKILL_HAULING       = SKILL_BASIC, // must be fit enough to do basic tasks around the tavern
		SKILL_COOKING       = SKILL_BASIC, // and should be skilled enough to do basic cooking/farming work
		SKILL_BOTANY        = SKILL_BASIC,
	)
	skill_points            = 18
	lock_keys = list(
		"tavern interior" = /decl/material/solid/metal/copper,
		"tavern exterior" = /decl/material/solid/metal/iron
	)

/obj/abstract/landmark/start/nebelstrand/tavern_worker
	name                    = "Tavern Worker"