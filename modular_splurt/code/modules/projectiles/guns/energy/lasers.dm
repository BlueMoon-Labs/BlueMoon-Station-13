/obj/item/gun/energy/civilian
	name = "civilian energy pistol"
	desc = "A cheap energy pistol produced by Wattz and Hertz. Has no external ammo indicator. It looks easily modifiable"
	icon = 'modular_splurt/icons/obj/guns/energy.dmi'
	icon_state = "wattz1000"
	icon_state = "caplaser"
	w_class = WEIGHT_CLASS_SMALL
	cell_type = /obj/item/stock_parts/cell{charge = 700; maxcharge = 700}
	ammo_type = list(/obj/item/ammo_casing/energy/disabler)
	weapon_weight = WEAPON_LIGHT

/obj/item/gun/energy/civilian/lethal
	name = "moddfied civilian energy pistol"
	desc = "A cheap energy pistol produced by Wattz and Hertz. Has no external ammo indicator. It has been modded to shoot lethal lasers, somehow."
	icon_state = "magnetowattz"
	ammo_type = list(/obj/item/ammo_casing/energy/laser)

/obj/item/gunpart/civilianlaserframe
	name = "civilian energy pistol frame"
	desc = "a civilian energy pistol frame"
	icon_state = "wattz1000frame"

/obj/item/gunpart/civilianlaserbarrel
	name = "civilian energy pistol barrel"
	desc = "a civilian energy pistol barrel"
	icon_state = "wattz1000barrel"

/datum/crafting_recipe/civilianlaserassemble
	name = "Assemble civilian energy pistol"
	result = /obj/item/gun/energy/civilian
	reqs = list(/obj/item/gunpart/civilianlaserframe = 1,
				/obj/item/gunpart/civilianlaserbarrel = 1)
	tool_behaviors = list(TOOL_SCREWDRIVER)
	time = 50
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/civilianlaserupgrade
	name = "Moddify civilian energy pistol"
	result = /obj/item/gun/energy/civilian/lethal
	reqs = list(/obj/item/gun/energy/civilian = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stock_parts/capacitor = 4,
				/obj/item/stock_parts/micro_laser = 1)
	tool_behaviors = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	time = 50
	category = CAT_WEAPON_RANGED

/obj/item/gun/energy/e_gun/corpus
	name = "Dera"
	desc = "An exotic laser rifle of Corpus make, someone's scrawled the word 'GROFIT' on the stock."
	icon = 'modular_splurt/icons/obj/guns/energy.dmi'
	icon_state = "dera"
	icon_state = "dera"
	lefthand_file = 'modular_splurt/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_splurt/icons/mob/inhands/weapons/guns_righthand.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	cell_type = /obj/item/stock_parts/cell{charge = 700; maxcharge = 700}
	ammo_type = list(/obj/item/ammo_casing/energy/disabler, /obj/item/ammo_casing/energy/laser)
	weapon_weight = WEAPON_LIGHT
	slot_flags = ITEM_SLOT_BACK

