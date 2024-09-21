/datum/map/nebelstrand
	id_hud_icons            = 'maps/nebelstrand/icons/hud.dmi'
	allowed_jobs            = list(
		/datum/job/nebelstrand/visitor/traveller,
		/datum/job/nebelstrand/visitor/traveller/learned,
		/datum/job/nebelstrand/visitor/beggar_knight,
		/datum/job/nebelstrand/caves/dweller,
		/datum/job/nebelstrand/visitor/traveller/cleric,
		/datum/job/nebelstrand/dock/dockmaster,
		/datum/job/nebelstrand/dock/wharf_laborer,
		/datum/job/nebelstrand/dock/bellkeeper,
		/datum/job/nebelstrand/dock/shipwright,
		/datum/job/nebelstrand/dock/smuggler,
		/datum/job/nebelstrand/inn/innkeeper,
		/datum/job/nebelstrand/inn/inn_worker,
		/datum/job/nebelstrand/market/farmer,
		/datum/job/nebelstrand/market/miner,
		/datum/job/nebelstrand/market/herbalist,
		/datum/job/nebelstrand/market/forester,
		/datum/job/nebelstrand/market/blacksmith,
		/datum/job/nebelstrand/market/trader,
		/datum/job/nebelstrand/fogfinders/mistseer,
		/datum/job/nebelstrand/fogfinders/fogfinder,
		/datum/job/nebelstrand/tavern/tavernkeeper,
		/datum/job/nebelstrand/tavern/tavern_worker,
		/datum/job/nebelstrand/church/priest,
		/datum/job/nebelstrand/church/acolyte,
		/datum/job/nebelstrand/monastery/abbot,
		/datum/job/nebelstrand/monastery/monk,
		/datum/job/nebelstrand/apothecary/apothecary

	)
	default_job_type = /datum/job/nebelstrand/visitor/traveller
	default_department_type = /decl/department/nebelstrand/visitors
	species_to_job_whitelist = list(
		/decl/species/grafadreka = list(
			/datum/job/nebelstrand/caves/dweller,
			/datum/job/nebelstrand/visitor/traveller
		)
	)
	job_to_species_blacklist = list(
		/datum/job/nebelstrand/caves/dweller = list(
			/decl/species/human,
			/decl/species/hnoll
		),
	)
	species_to_job_blacklist = list(
		/decl/species/kobaloi = list(
			/datum/job/nebelstrand/visitor/beggar_knight,
			/datum/job/nebelstrand/inn/innkeeper,
			/datum/job/nebelstrand/church/priest,
			/datum/job/nebelstrand/monastery/abbot,
			/datum/job/nebelstrand/visitor/traveller/cleric
		)
	)

/decl/department/nebelstrand
	abstract_type           = /decl/department/nebelstrand
	noun                    = "faction"
	noun_adj                = "faction"
	announce_channel        = null

/datum/job/nebelstrand
	abstract_type           = /datum/job/nebelstrand
	department_types        = list(
		/decl/department/nebelstrand/market
	)
	min_skill               = list()
	// if you consider adding something like literacy to this list to make it rarer/more exclusive
	// consider making the higher levels cost more points instead
	max_skill               = list(
		SKILL_CHEMISTRY     = SKILL_BASIC, // this is the domain of the herbalist
	)
	skill_points            = 20
