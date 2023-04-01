/datum/hud
	/// Extra inventory slots visible?
	var/extra_shown = FALSE
	/// Equipped item screens that don"t show up even if using the initial toggle
	var/list/extra_inventory = list()

	/// UI element for hunger
	var/atom/movable/screen/hunger
	/// UI element for thirst
	var/atom/movable/screen/thirst

// Used for getting icons for extra inventory slots
GLOBAL_LIST_INIT(modular_ui_styles, list(
	"Midnight" = "modular_sand/icons/mob/screen_midnight.dmi",
	"Retro" = "modular_sand/icons/mob/screen_retro.dmi",
	"Plasmafire" = "modular_sand/icons/mob/screen_plasmafire.dmi",
	"Slimecore" = "modular_sand/icons/mob/screen_slimecore.dmi",
	"Operative" = "modular_sand/icons/mob/screen_operative.dmi",
	"Clockwork" = "modular_sand/icons/mob/screen_clockwork.dmi",
	"Liteweb" = "modular_sand/icons/mob/screen_liteweb.dmi"
))

// Same as above
/proc/ui_style_modular(ui_style)
		return GLOB.modular_ui_styles[ui_style] || GLOB.modular_ui_styles[GLOB.modular_ui_styles[1]]

// Called after updating extra inventory
/datum/hud/proc/extra_inventory_update()
	return
