/decl/department/nebelstrand/dock
	name                    = "Dock Workers"
	colour                  = "#352317"
	display_color           = "#72523f"

/datum/job/nebelstrand/dock
	abstract_type           = /datum/job/nebelstrand/dock
	department_types        = list(/decl/department/nebelstrand/dock)

/datum/job/nebelstrand/dock/dockmaster
	title                   = "Dockmaster"
	supervisors             = "your dock and self-interest"
	description             = "You are the overseer of Grey Harbor, responsible for managing ships, cargo, and the safety of the docks."
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
		SKILL_HAULING       = SKILL_BASIC, // Probably pushing a lot of stuff around
	)
	skill_points            = 22
	lock_keys = list(
		"harbormaster's room" = /decl/material/solid/metal/silver,
		"storehouse"  = /decl/material/solid/metal/iron
	)

/obj/abstract/landmark/start/nebelstrand/dockmaster
	name                    = "Dockmaster"

/datum/job/nebelstrand/dock/wharf_laborer
	title                   = "Wharf Laborer"
	supervisors             = "the dockmaster"
	description             = "You work at the docks, though your exact expectations are nebulous, the dockmaster might have something for you. You have to earn your keep be it honest work or not."
	spawn_positions         = 3
	total_positions         = 3
	outfit_type             = /decl/outfit/job/nebelstrand/traveller
	min_skill               = list(
		SKILL_HAULING       = SKILL_ADEPT, // Who else is gonna be moving the boxes around?
	)
	skill_points            = 18
	lock_keys = list(
		"storehouse"  = /decl/material/solid/metal/iron
	)

/obj/abstract/landmark/start/nebelstrand/wharf_laborer
	name                    = "Wharf Laborer"

/datum/job/nebelstrand/dock/bellkeeper
	title                   = "Bell Keeper"
	supervisors             = "the dockmaster"
	description             = "You are isolated keeper of the Silver Bell Lighthouse, responsible for ensuring the bell tolls during fog and storms and the lamp stays lit."
	spawn_positions         = 1
	total_positions         = 1
	outfit_type             = /decl/outfit/job/nebelstrand/traveller
	min_skill               = list(
		SKILL_LITERACY      = SKILL_BASIC, // Not much else to do up there...
	)
	skill_points            = 18

/obj/abstract/landmark/start/nebelstrand/bellkeeper
	name                    = "Bell Keeper"

/datum/job/nebelstrand/dock/shipwright
	title                   = "Shipwright"
	supervisors             = "your self-interest and whoever will hire you"
	description             = "A craftsman responsible for building and repairing ships at the docks. Works with traders, smugglers, and sometimes other unsavory folk."
	spawn_positions         = 2
	total_positions         = 2
	outfit_type             = /decl/outfit/job/nebelstrand/traveller
	min_skill               = list(
		SKILL_CARPENTRY     = SKILL_ADEPT, // tree felling
		SKILL_HAULING       = SKILL_ADEPT, // general physical activity
		SKILL_ATHLETICS     = SKILL_ADEPT, // general physical activity
	)
	skill_points            = 18

/obj/abstract/landmark/start/nebelstrand/shipwright
	name                    = "Shipwright"

/datum/job/nebelstrand/dock/smuggler
	title                   = "Smuggler"
	supervisors             = "your own self-interest"
	description             = "A covert member of the Veiled Fogbound, your goal is to traffic illicit goods into and out of Nebelstrand under the eyes of the dockmaster."
	spawn_positions         = 1
	total_positions         = 1
	req_admin_notify        = TRUE
	guestbanned             = TRUE
	outfit_type             = /decl/outfit/job/nebelstrand/traveller
	min_skill               = list(
		SKILL_HAULING       = SKILL_BASIC,
		SKILL_ATHLETICS     = SKILL_BASIC,
		SKILL_COMBAT        = SKILL_BASIC,
	)
	skill_points            = 18

/obj/abstract/landmark/start/nebelstrand/smuggler
	name                    = "Smuggler"

