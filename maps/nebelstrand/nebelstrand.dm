#if !defined(USING_MAP_DATUM)

	#include "../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../mods/content/scaling_descriptors.dm"
	#include "../../mods/species/drakes/_drakes.dme" // include before _fantasy.dme so overrides work
	#include "../../mods/content/anima/_anima.dme"   // include before _fantasy.dme so skill overrides work
	#include "../../mods/content/fantasy/_fantasy.dme"
	#include "../../mods/pyrelight/_pyrelight.dme" // include after _fantasy.dme so overrides work

	#include "areas/_areas.dm"
	#include "areas/downlands.dm"
	#include "areas/grassland.dm"
	#include "areas/swamp.dm"
	#include "areas/woods.dm"

	#include "jobs/_jobs.dm"
	#include "jobs/caves.dm"
	#include "jobs/inn.dm"
	#include "jobs/tavern.dm"
	#include "jobs/church.dm"
	#include "jobs/monastery.dm"
	#include "jobs/visitors.dm"
	#include "jobs/docks.dm"
	#include "jobs/fogfinder.dm"
	#include "jobs/market.dm"
	#include "jobs/guards.dm"
	#include "jobs/apothecary.dm"

	#include "submaps/_submaps.dm"
	#include "submaps/downlands/_downlands.dm"
	#include "submaps/grassland/_grassland.dm"
	#include "submaps/swamp/_swamp.dm"
	#include "submaps/woods/_woods.dm"
	#include "submaps/woods/bear_den/bear_den.dm"
	#include "submaps/woods/chemistry_shack/chemistry_shack.dm"
	#include "submaps/woods/fairy_rings/fairy_rings.dm"
	#include "submaps/woods/fox_den/fox_den.dm"
	#include "submaps/woods/hunter_camp/hunter_camp.dm"
	#include "submaps/woods/old_cabin/old_cabin.dm"

	#include "levels/_levels.dm"
	#include "levels/random_map.dm"
	#include "levels/strata.dm"

	#include "outfits/_outfits.dm"
	#include "outfits/caves.dm"
	#include "outfits/inn.dm"
	#include "outfits/shrine.dm"
	#include "outfits/visitors.dm"
	#include "outfits/wilderness.dm"

	#include "nebelstrand_currency.dm"
	#include "nebelstrand_events.dm"
	#include "nebelstrand_locks.dm"
	#include "nebelstrand_keys.dm"
	#include "nebelstrand_map.dm"
	#include "nebelstrand_skills.dm"
	#include "nebelstrand_testing.dm"
	#include "nebelstrand_turfs.dm"

	// Dungeon is below woods and must be compiled in that order for multiz.
	#include "nebelstrand-dungeon.dmm"
	#include "nebelstrand-woods.dmm"
	// Caverns is under mainstreet and must be compiled in that order for multiz.
	#include "nebelstrand-caverns.dmm"
	#include "nebelstrand-mainstreet.dmm"
	// Greyharbor is under above and must be compiled in that order for multiz.
	#include "nebelstrand-greyharbor.dmm"
	#include "nebelstrand-above.dmm"
	// Other levels are lateral and compile order doesn't matter.
	#include "nebelstrand-swamp.dmm"

	#define USING_MAP_DATUM /datum/map/nebelstrand

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Nebelstrand
#endif
