/decl/department/nebelstrand/apothecary
	name                    = "Apothecary"
	colour                  = "#685840"
	display_color           = "#c4b58c"

/datum/job/nebelstrand/inn
	abstract_type           = /datum/job/nebelstrand/market
	department_types        = list(/decl/department/nebelstrand/market)

/datum/job/nebelstrand/apothecary/apothecary
	title                   = "Apothecary"
	supervisors             = "your own self-interest"
	description             = "You are a master of both healing and alchemy, craft remedies and potions to sell at your shop. You are knowledgeable of local niche herbs that are good for brewing."
	spawn_positions         = 1
	total_positions         = 1
	outfit_type             = /decl/outfit/job/nebelstrand/herbalist
	min_skill               = list(
		SKILL_BOTANY        = SKILL_ADEPT, // growing, processing, and identifying plants
		SKILL_MEDICAL       = SKILL_BASIC, // identifying illnesses and applying medicines
		SKILL_CHEMISTRY     = SKILL_BASIC, // processing plant extracts into tinctures, ointments, etc
	)
	max_skill               = list(
		SKILL_MEDICAL       = SKILL_MAX,
		SKILL_ANATOMY       = SKILL_MAX,
		SKILL_CHEMISTRY     = SKILL_MAX,
	)
	skill_points            = 22
	lock_keys = list(
		"apothecary" = /decl/material/solid/metal/copper
	)

/obj/abstract/landmark/start/nebelstrand/apothecary
	name                    = "Apothecary"