/obj/item/claymore/cerberus
	name = "claymore"
	desc = "What are you standing around staring at this for? Get to killing!"
	icon = 'modular_bluemoon/krashly/icons/obj/weapons/weapons.dmi'
	icon_state = "siegesword"
	icon_state = "claymore"
	lefthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/lefthand.dmi'
	righthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/righthand.dmi'
	force = 30

/obj/item/claymore/censor
	name = "silver sword"
	desc = "A silver sword with patterns on its blade and handle. Dried blood on the edge of the blade is frightening."
	icon = 'modular_bluemoon/krashly/icons/obj/weapons/weapons.dmi'
	icon_state = "silversword"
	icon_state = "bastard"
	lefthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/lefthand.dmi'
	righthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/righthand.dmi'
	force = 40

/obj/item/spear/cerberus
	icon_state = "tribal_spear0"
	icon = 'modular_bluemoon/krashly/icons/obj/weapons/weapons.dmi'
	lefthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/lefthand.dmi'
	righthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/righthand.dmi'
	name = "tribal spear"
	force = 25
	icon_prefix = "tribal_spear"

/obj/item/spear/cerberus/Initialize()
	. = ..()
	AddComponent(/datum/component/two_handed, force_unwielded=25, force_wielded=45, icon_wielded="[icon_prefix]1")

/obj/item/claymore/cerberus/bardiche
	name = "bardiche"
	desc = "A huge stick with a blade at the end. Say it's called an ax? In any case, it cuts people well."
	icon = 'modular_bluemoon/krashly/icons/obj/weapons/weapons.dmi'
	icon_state = "bardiche"
	icon_state = "bardiche"
	lefthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/lefthand.dmi'
	righthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/righthand.dmi'
	force = 35

/obj/item/shield/riot/roman/cerberus
	name = "wooden shield"
	desc = "wooden shield with a small iron insert in the middle. Has a handle to make it easier to hold."
	icon = 'modular_bluemoon/krashly/icons/obj/weapons/weapons.dmi'
	icon_state = "wbuckler"
	icon_state = "wbuckler"
	lefthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/lefthand.dmi'
	righthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/righthand.dmi'

/obj/item/clothing/head/donator/bm/cerberus_helmet/armored
	armor = list(MELEE = 45, BULLET = 30, LASER = 30,ENERGY = 10, BOMB = 25, BIO = 0, RAD = 0, FIRE = 70, ACID = 90, WOUND = 10)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	clothing_flags = STOPSPRESSUREDAMAGE
	strip_delay = 80

/obj/item/clothing/suit/donator/bm/cerberus_suit/armored
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list(MELEE = 45, BULLET = 30, LASER = 30, ENERGY = 10, BOMB = 25, BIO = 0, RAD = 0, FIRE = 70, ACID = 90, WOUND = 10)
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS
	strip_delay = 80
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION|CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/suit/donator/bm/cerberus_suit/armored/censor
	name = "censor's coat"
	desc = "A red overcoat with the coat of arms of Ravenheart in the middle. It has steel plates sewn into it."
	icon = 'modular_bluemoon/krashly/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_bluemoon/krashly/icons/mob/clothing/suits.dmi'
	icon_state = "censor"
	icon_state = "censor"

/obj/item/clothing/suit/donator/bm/cerberus_suit/armored/baron
	name = "gorgeous red outfit"
	desc = "Lush black outfit with red stripes. Looks definitely very rich."
	icon = 'modular_bluemoon/krashly/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_bluemoon/krashly/icons/mob/clothing/suits.dmi'
	icon_state = "baron"
	icon_state = "baron"

/obj/item/gun/energy/taser/bolestrel
	name = "sparq"
	desc = "A weapon that uses small darts that cause your opponent to wallow in agony."
	icon = 'modular_bluemoon/krashly/icons/obj/weapons/weapons.dmi'
	lefthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/lefthand.dmi'
	righthand_file = 'modular_bluemoon/krashly/icons/mob/inhands/weapons/righthand.dmi'
	icon_state = "sparq"
	icon_state = null
	ammo_type = list(/obj/item/ammo_casing/energy/electrode/bolestrel)

/obj/item/gun/energy/taser/bolestrel/censor
	name = "modernized sparq"
	icon_state = "taser_h"

/obj/item/ammo_casing/energy/electrode/bolestrel
	projectile_type = /obj/projectile/energy/electrode/security/hos/bolestrel
	select_name = "make pain"
	fire_sound = 'sound/weapons/bowfire.wav'
	e_cost = 50
	harmful = FALSE

/obj/projectile/energy/electrode/security/hos/bolestrel
	icon = 'modular_bluemoon/krashly/icons/obj/projectiles.dmi'
	icon_state = "cbbolt"
	hitsound = 'sound/weapons/nebhit.ogg'
	tracer_type = null
	muzzle_type = null
	impact_type = null
