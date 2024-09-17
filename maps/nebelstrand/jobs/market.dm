/decl/department/nebelstrand/market
	name                    = "Vendors"
	colour                  = "#685840"
	display_color           = "#c4b58c"

/datum/job/nebelstrand/inn
	abstract_type           = /datum/job/nebelstrand/market
	department_types        = list(/decl/department/nebelstrand/market)

/datum/job/nebelstrand/market/farmer
	title                   = "Farmer"
	supervisors             = "your own self-interest"
	description             = "You grow crops both for your own subsistence and to sell to others like the innkeeper or general store. You are knowledgeable of local plants grown for sustenance, but your knowledge of niche herbs may be spottier."
	spawn_positions         = 3
	total_positions         = 3
	outfit_type             = /decl/outfit/job/nebelstrand/farmer
	min_skill               = list(
		SKILL_HAULING       = SKILL_ADEPT, // farming can be demanding work
		SKILL_HUSBANDRY     = SKILL_ADEPT, // must be able to pick up and milk animals
		SKILL_BOTANY        = SKILL_ADEPT, // must be skilled enough to have plants reliably survive when planted
	)
	skill_points            = 18
	lock_keys = list(
		"farmhouse" = /decl/material/solid/metal/copper
	)

/obj/abstract/landmark/start/nebelstrand/farmer
	name                    = "Farmer"

/datum/job/nebelstrand/market/miner
	title                   = "Miner"
	description             = "You mine ores from the mountain, and occasionally refine them, too. The only limit to your potential bounty is your own hard work and ingenuity... and the kobaloi in the caves."
	supervisors             = "the consequences of your actions"
	spawn_positions         = 1
	total_positions         = 1
	outfit_type             = /decl/outfit/job/nebelstrand/miner
	min_skill               = list(
		SKILL_HAULING       = SKILL_ADEPT, // general physical activity
		SKILL_METALWORK     = SKILL_BASIC, // ore smelting, metallurgy
		SKILL_STONEMASONRY  = SKILL_BASIC, // experienced working with stone
		SKILL_SCULPTING     = SKILL_BASIC, // producing clay molds, firing pottery
	)
	skill_points            = 20

/obj/abstract/landmark/start/nebelstrand/miner
	name                    = "Miner"

/datum/job/nebelstrand/market/herbalist
	title                   = "Herbalist"
	description             = "You collect and grow plants and herbs and process them into various useful substances, such as medicinal tinctures, ointments, and teas."
	supervisors             = "nature"
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

/obj/abstract/landmark/start/nebelstrand/herbalist
	name                    = "Herbalist"

/datum/job/nebelstrand/market/forester
	title                   = "Forester"
	description             = "You are at home in nature, whether you're fishing, hunting wild game, or chopping timber for firewood and construction."
	supervisors             = "nature"
	spawn_positions         = 1
	total_positions         = 1
	outfit_type             = /decl/outfit/job/nebelstrand/forester
	min_skill               = list(
		SKILL_HAULING       = SKILL_ADEPT, // overall physical activity
		SKILL_HUSBANDRY     = SKILL_BASIC, // handling and caring for animals
		SKILL_BOTANY        = SKILL_BASIC, // growing and harvesting plants, trees, etc
		SKILL_COOKING       = SKILL_BASIC, // butchery
		SKILL_CARPENTRY     = SKILL_ADEPT, // tree felling
	)
	skill_points            = 22

/obj/abstract/landmark/start/nebelstrand/forester
	name                    = "Forester"
