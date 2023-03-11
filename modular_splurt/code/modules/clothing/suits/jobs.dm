/obj/item/clothing/suit/det_suit/lanyard
	name = "trench coat"
	desc = "An 18th-century multi-purpose trench coat. This one has a lanyard around the neck."
	icon = 'modular_splurt/icons/obj/clothing/suits.dmi'
	mob_overlay_icon = 'modular_splurt/icons/mob/clothing/suit.dmi'
	icon_state = "detective_lanyard"
	icon_state = "detective_lanyard"

/obj/item/clothing/suit/toggle/brigdesec
	name = "bridge officer jacket"
	desc = "A snappy dress jacket."
	icon_state = "suitjacket_bridgesec"
	icon_state = "suitjacket_bridgesec"
	icon = 'modular_splurt/icons/obj/clothing/suits.dmi'
	mob_overlay_icon = 'modular_splurt/icons/mob/clothing/suit.dmi'
	blood_overlay_type = "coat"
	body_parts_covered = CHEST|ARMS
	togglename = "buttons"
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_NO_ANTHRO_ICON

/obj/item/clothing/suit/toggle/armor/hop/hop_formal
	name = "\improper Head of Personnel's parade jacket"
	desc = "For when an armoured vest isn't fashionable enough."
	icon_state = "hopformal"
	icon_state = "hopformal"
	icon = 'modular_splurt/icons/obj/clothing/suits.dmi'
	mob_overlay_icon = 'modular_splurt/icons/mob/clothing/suit.dmi'
	anthro_mob_worn_overlay = 'modular_splurt/icons/mob/clothing/suit.dmi'
	body_parts_covered = CHEST|ARMS
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50, "wound" = 10)
	togglename = "buttons"
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_NO_ANTHRO_ICON

/obj/item/clothing/suit/toggle/armor/hop/hop_formal/Initialize()
	. = ..()
	allowed = GLOB.security_wintercoat_allowed
