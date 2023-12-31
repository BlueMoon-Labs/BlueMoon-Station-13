//SPAWNERS//
/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/shaftminer
	name = "DS-1 Shaft Miner"
	you_are_text = "You are an DS-1 shaft miner, employed in a top secret research facility developing biological weapons."
	outfit = /datum/outfit/lavaland_syndicate/shaftminer

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/comms/space
	outfit = /datum/outfit/lavaland_syndicate/comms/space

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/shaftminer/ice
	name = "DS-1 Shaft Miner"
	you_are_text = "You are an DS-1 shaft miner, employed in a top secret research facility developing biological weapons."
	outfit = /datum/outfit/lavaland_syndicate/shaftminer/ice

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate
	name = "DS-1 Bioweapon Scientist"
	you_are_text = "You are an DS-1 science technician, employed in a top secret research facility developing biological weapons."

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/ice
	outfit = /datum/outfit/lavaland_syndicate/ice

//OUTFITS//
/datum/outfit/lavaland_syndicate
	name = "DS-1 Bioweapon Scientist"
	uniform = /obj/item/clothing/under/rank/rnd/scientist/skyrat/utility/syndicate
	ears = /obj/item/radio/headset/interdyne

/datum/outfit/lavaland_syndicate/post_equip(mob/living/carbon/human/syndicate, visualsOnly = FALSE)
	syndicate.faction |= ROLE_SYNDICATE

	var/obj/item/card/id/id_card = syndicate.wear_id
	if(istype(id_card))
		id_card.registered_name = syndicate.real_name
		id_card.update_label()
		id_card.update_icon()

	handlebank(syndicate)
	return ..()

/datum/outfit/lavaland_syndicate/ice
	uniform = /obj/item/clothing/under/syndicate/skyrat/tactical
	suit = /obj/item/clothing/suit/hooded/wintercoat/skyrat/syndicate
	ears = /obj/item/radio/headset/interdyne

/datum/outfit/lavaland_syndicate/comms
	uniform = /obj/item/clothing/under/rank/security/skyrat/utility/redsec/syndicate
	ears = /obj/item/radio/headset/interdyne/comms

/datum/outfit/lavaland_syndicate/comms/space
	ears = /obj/item/radio/headset/syndicate/alt

/datum/outfit/lavaland_syndicate/shaftminer
	name = "DS-1 Shaft Miner"
	uniform = /obj/item/clothing/under/rank/cargo/tech/skyrat/utility/syndicate
	suit = null //Subtype moment
	r_pocket = /obj/item/storage/bag/ore
	id_trim = /datum/id_trim/syndicom/skyrat/interdyne
	backpack_contents = list(
		/obj/item/flashlight/seclite=1,\
		/obj/item/knife/combat/survival=1,
		/obj/item/mining_voucher=1,
		/obj/item/t_scanner/adv_mining_scanner/lesser=1,
		/obj/item/gun/energy/recharge/kinetic_accelerator=1,\
		/obj/item/stack/marker_beacon/ten=1)

/datum/outfit/lavaland_syndicate/shaftminer/deckofficer
	name = "DS-1 Deck Officer"
	uniform = /obj/item/clothing/under/rank/cargo/qm/skyrat/syndie
	neck = /obj/item/clothing/neck/cloak/qm/syndie
	ears = /obj/item/radio/headset/interdyne/command
	id = /obj/item/card/id/advanced/silver/generic
	id_trim = /datum/id_trim/syndicom/skyrat/interdyne/deckofficer

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/deckofficer
	name = "DS-1 Deck Officer"
	you_are_text = "You are an DS-1 Deck Officer, employed in a top secret research facility developing biological weapons."
	outfit = /datum/outfit/lavaland_syndicate/shaftminer/deckofficer

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/deckofficer/Destroy()
	new/obj/structure/fluff/empty_sleeper/syndicate/captain(get_turf(src))
	return ..()

/datum/outfit/lavaland_syndicate/shaftminer/ice
	name = "Icemoon DS-1 Shaft Miner"
	uniform = /obj/item/clothing/under/syndicate/skyrat/tactical
	suit = /obj/item/clothing/suit/hooded/wintercoat/skyrat/syndicate

//ITEMS

/obj/item/radio/headset/interdyne
	name = "DS-1 headset"
	desc = "A bowman headset with a large red cross on the earpiece, has a small 'DS-1' written on the top strap. Protects the ears from flashbangs."
	icon_state = "syndie_headset"
	inhand_icon_state = null
	radiosound = 'modular_skyrat/modules/radiosound/sound/radio/syndie.ogg'
	keyslot = new /obj/item/encryptionkey/headset_syndicate/interdyne

/obj/item/radio/headset/interdyne/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS_LEFT, ITEM_SLOT_EARS_RIGHT)) //BlueMoon edit

/obj/item/radio/headset/interdyne/command
	name = "DS-1 command headset"
	desc = "A commanding headset to gather your underlings. Protects the ears from flashbangs."
	command = TRUE

/obj/item/radio/headset/interdyne/comms
	keyslot = new /obj/item/encryptionkey/headset_syndicate/interdyne
	keyslot2 = new /obj/item/encryptionkey/syndicate
