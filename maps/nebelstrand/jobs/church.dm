/decl/department/nebelstrand/church
	name          = "Acolytes"
	colour        = "#404e68"
	display_color = "#8c96c4"

/datum/job/nebelstrand/church
	abstract_type    = /datum/job/nebelstrand/church
	department_types = list(/decl/department/nebelstrand/church)
	skill_points     = 20
	lock_keys     = list(
		"church"  = /decl/material/solid/metal/copper
	)

/datum/job/nebelstrand/church/priest
	title                   = "Priest"
	supervisors             = "your vows, and your faith"
	description             = "You are the leader of the local religious order, living and working within the church. You are expected to see to both the spiritual and physical health of the populace, as well as travellers, if they can offer appropriate tithe."
	spawn_positions         = 1
	total_positions         = 1
	outfit_type             = /decl/outfit/job/nebelstrand/shrine/keeper
	min_skill               = list(
		SKILL_STONEMASONRY  = SKILL_BASIC,
		SKILL_CARPENTRY     = SKILL_BASIC,
		SKILL_TEXTILES      = SKILL_BASIC,
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

/obj/abstract/landmark/start/nebelstrand/priest
	name                    = "Priest"

/datum/job/nebelstrand/church/acolyte
	title                   = "Acolyte"
	supervisors             = "the Priest, your vows, and your faith"
	description             = "You are an acolyte of the local religious order, living and working within the church. Under the direction of the priest, you are expected to tend to the church and the grounds, and to produce food or other goods for use or trade to support the clergy."
	spawn_positions         = 2
	total_positions         = 2
	outfit_type             = /decl/outfit/job/nebelstrand/shrine
	min_skill               = list(
		SKILL_STONEMASONRY  = SKILL_BASIC,
		SKILL_CARPENTRY     = SKILL_BASIC,
		SKILL_TEXTILES      = SKILL_BASIC,
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

/obj/abstract/landmark/start/nebelstrand/acolyte
	name                    = "Acolyte"
