#define ZM_DESTRUCTION_TIMER(TARGET) addtimer(CALLBACK(TARGET, /datum/.proc/qdel_self), 10 SECONDS, TIMER_STOPPABLE)
#define TURF_IS_MIMICKING(T) (isturf(T) && (T:z_flags & ZM_MIMIC_BELOW))
#define CHECK_OO_EXISTENCE(OO) if (OO && !MOVABLE_IS_ON_ZTURF(OO) && !OO.destruction_timer) { OO.destruction_timer = ZM_DESTRUCTION_TIMER(OO); }
#define UPDATE_OO_IF_PRESENT CHECK_OO_EXISTENCE(bound_overlay); if (bound_overlay) { update_above(); }

// I do not apologize.

// These aren't intended to be used anywhere else, they just can't be undef'd because DM is dum.
#define ZM_INTERNAL_SCAN_LOOKAHEAD(M,VTR,F) ((get_step(M, M:dir)?:VTR & F) || (get_step(M, turn(M:dir, 180))?:VTR & F))
#define ZM_INTERNAL_SCAN_LOOKBESIDE(M,VTR,F) ((get_step(M, turn(M:dir, 90))?:VTR & F) || (get_step(M, turn(M:dir, -90))?:VTR & F))

/// Is this movable visible from a turf that is mimicking below? Note: this does not necessarily mean *directly* below.
#define MOVABLE_IS_BELOW_ZTURF(M) (\
	isturf(M:loc) && (TURF_IS_MIMICKING(M:loc:above) \
	|| ((M:z_flags & ZMM_LOOKAHEAD) && ZM_INTERNAL_SCAN_LOOKAHEAD(M, above?:z_flags, ZM_MIMIC_BELOW))  \
	|| ((M:z_flags & ZMM_LOOKBESIDE) && ZM_INTERNAL_SCAN_LOOKBESIDE(M, above?:z_flags, ZM_MIMIC_BELOW))) \
)
/// Is this movable located on a turf that is mimicking below? Note: this does not necessarily mean *directly* on.
#define MOVABLE_IS_ON_ZTURF(M) (\
	isturf(M:loc) && (TURF_IS_MIMICKING(M:loc:above) \
	|| ((M:z_flags & ZMM_LOOKAHEAD) && ZM_INTERNAL_SCAN_LOOKAHEAD(M, z_flags, ZM_MIMIC_BELOW)) \
	|| ((M:z_flags & ZMM_LOOKBESIDE) && ZM_INTERNAL_SCAN_LOOKBESIDE(M, z_flags, ZM_MIMIC_BELOW))) \
)
#define MOVABLE_SHALL_MIMIC(AM) (!(AM.z_flags & ZMM_IGNORE) && MOVABLE_IS_BELOW_ZTURF(AM))

// Turf MZ flags.
#define ZM_MIMIC_BELOW     1	//! If this turf should mimic the turf on the Z below.
#define ZM_MIMIC_OVERWRITE 2	//! If this turf is Z-mimicking, overwrite the turf's appearance instead of using a movable. This is faster, but means the turf cannot have its own appearance (say, edges or a translucent sprite).
#define ZM_ALLOW_LIGHTING  4	//! If this turf should permit passage of lighting.
#define ZM_ALLOW_ATMOS     8	//! If this turf permits passage of air.
#define ZM_MIMIC_NO_AO    16	//! If the turf shouldn't apply regular turf AO and only do Z-mimic AO.
#define ZM_NO_OCCLUDE     32	//! Don't occlude below atoms if we're a non-mimic z-turf.
#define ZM_MIMIC_BASETURF 64	//! Mimic baseturf instead of the below atom. Sometimes useful for elevators.

// Convenience flag.
#define ZM_MIMIC_DEFAULTS (ZM_MIMIC_BELOW|ZM_ALLOW_LIGHTING)

// For debug purposes, should contain the above defines in ascending order.
var/global/list/mimic_defines = list(
	"ZM_MIMIC_BELOW",
	"ZM_MIMIC_OVERWRITE",
	"ZM_ALLOW_LIGHTING",
	"ZM_ALLOW_ATMOS",
	"ZM_MIMIC_NO_AO",
	"ZM_NO_OCCLUDE",
	"ZM_MIMIC_BASETURF"
)

// Movable flags.
#define ZMM_IGNORE        1	//! Do not copy this movable.
#define ZMM_MANGLE_PLANES 2	//! Check this movable's overlays/underlays for explicit plane use and mangle for compatibility with Z-Mimic. If you're using emissive overlays, you probably should be using this flag. Expensive, only use if necessary.
#define ZMM_LOOKAHEAD     3	//! Look one turf ahead and one turf back when considering z-turfs that might be seeing this atom. Cheap, but not free.
#define ZMM_LOOKBESIDE    4	//! Look one turf beside (left/right) when considering z-turfs that might be seeing this atom. Cheap, but not free.
