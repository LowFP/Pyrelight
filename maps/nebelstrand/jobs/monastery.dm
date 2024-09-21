/decl/department/nebelstrand/monastery
	name          = "Acolytes"
	colour        = "#404e68"
	display_color = "#8c96c4"

/datum/job/nebelstrand/monastery
	abstract_type    = /datum/job/nebelstrand/monastery
	department_types = list(/decl/department/nebelstrand/monastery)
	skill_points     = 20
	lock_keys     = list(
		"monastery"  = /decl/material/solid/metal/copper
	)

/datum/job/nebelstrand/monastery/abbot
	title                   = "Abbot"
	supervisors             = "your vows, and your faith"
	description             = "You are the spiritual leader of a religious order, living and working within the monastery. You are responsible for guiding the monks in their devotion and ensuring the sacred rituals are conducted properly."
	spawn_positions         = 1
	total_positions         = 1
	outfit_type             = /decl/outfit/job/nebelstrand/shrine/keeper
	min_skill               = list(
		SKILL_COOKING       = SKILL_BASIC,
		SKILL_BOTANY        = SKILL_BASIC,
		SKILL_ATHLETICS     = SKILL_BASIC,
		SKILL_LITERACY      = SKILL_ADEPT,
		SKILL_MEDICAL       = SKILL_ADEPT,
		SKILL_ANATOMY       = SKILL_ADEPT,
	)
	max_skill               = list(
		SKILL_MEDICAL       = SKILL_MAX,
		SKILL_ANATOMY       = SKILL_MAX,
	)
	skill_points            = 24

/obj/abstract/landmark/start/nebelstrand/abbot
	name                    = "Abbot"

/datum/job/nebelstrand/monastery/monk
	title                   = "Monk"
	supervisors             = "the Abbot, your vows, and your faith"
	description             = "You are a monk of a religious order, living and working within the monastery. You spend your days in quiet meditation and spiritual study while assisting the Abbot with rituals and offer guidance and healing to the townspeople."
	spawn_positions         = 2
	total_positions         = 2
	outfit_type             = /decl/outfit/job/nebelstrand/shrine
	min_skill               = list(
		SKILL_COOKING       = SKILL_BASIC,
		SKILL_BOTANY        = SKILL_BASIC,
		SKILL_ATHLETICS     = SKILL_ADEPT,
		SKILL_MEDICAL       = SKILL_ADEPT,
		SKILL_ANATOMY       = SKILL_ADEPT,
	)
	max_skill               = list(
		SKILL_COOKING       = SKILL_EXPERT,
		SKILL_BOTANY        = SKILL_EXPERT,
		SKILL_MEDICAL       = SKILL_EXPERT,
		SKILL_ANATOMY       = SKILL_EXPERT,
	)

/obj/abstract/landmark/start/nebelstrand/monk
	name                    = "Monk"
