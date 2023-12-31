//GLOVE SLOT ITEMS...
//SynTech ring
/obj/item/clothing/gloves/ring/syntech
	name = "normalizer ring"
	desc = "An expensive, shimmering SynTech ring gilded with golden NanoTrasen markings. It will 'normalize' the size of the user to a specified height approved for work-conditions, as long as it is equipped. The artificial violet gem inside twinkles ominously."
	icon = 'modular_splurt/icons/obj/clothing/sizeaccessories.dmi'
	icon_state = "ring"
	icon_state = "sring" //No use in a unique sprite since it's just one pixel
	w_class = WEIGHT_CLASS_TINY
	body_parts_covered = 0
	strip_delay = 40
	//These are already defined under the parent ring, but I wanna leave em here for reference purposes

//For glove slots
/obj/item/clothing/gloves/ring/syntech/equipped(mob/living/user, slot)
	if(slot != ITEM_SLOT_GLOVES)
		return ..()

	if(user.GetComponent(/datum/component/size_normalized))
		to_chat(user, "<span class='warning'>\The [src] buzzes, being overwritten by another accessory.</span>")
		playsound(src, 'sound/machines/buzz-sigh.ogg', 50, 1)
	else
		user.AddComponent(/datum/component/size_normalized, wear=src)
	. = ..()

/obj/item/clothing/gloves/ring/syntech/dropped(mob/living/user, slot)
	var/datum/component/size_normalized/comp = user.GetComponent(/datum/component/size_normalized)
	if(comp?.attached_wear == src)
		qdel(comp)
	. = ..()

//wrist items (now we do, ha ha!)
/obj/item/clothing/wrists
	name = "slap bracelet"
	desc = "oh no."
	gender = PLURAL //change this if it is for a single wrist
	w_class = WEIGHT_CLASS_SMALL
	icon = 'modular_sand/icons/obj/clothing/wrist.dmi'
	worn_icon = 'modular_sand/icons/mob/clothing/wrists.dmi'
	siemens_coefficient = 0.5
	body_parts_covered = HANDS
	slot_flags = ITEM_SLOT_WRISTS
	attack_verb_simple = list("slapped on the wrist")
	strip_delay = 20
	equip_delay_other = 40

//SynTech Wristband
/obj/item/clothing/wrists/syntech
	name = "normalizer wristband"
	desc = "An expensive technological wristband cast in SynTech purples with shimmering NanoTrasen golds. It will 'normalize' the size of the user to a specified height for approved work-conditions, as long as it is equipped. There is a small screen buzzing with information."
	icon = 'modular_splurt/icons/obj/clothing/sizeaccessories.dmi'
	worn_icon = 'modular_splurt/icons/mob/clothing/hands.dmi'
	icon_state = "wristband"
	icon_state = "syntechband"

/obj/item/clothing/wrists/syntech/equipped(mob/user, slot)
	if(slot != ITEM_SLOT_WRISTS)
		return ..()

	if(user.GetComponent(/datum/component/size_normalized))
		to_chat(user, "<span class='warning'>\The [src] buzzes, being overwritten by another accessory.</span>")
		playsound(src, 'sound/machines/buzz-sigh.ogg', 50, 1)
	else
		user.AddComponent(/datum/component/size_normalized, wear=src)
	. = ..()

/obj/item/clothing/wrists/syntech/dropped(mob/living/user, slot)
	var/datum/component/size_normalized/comp = user.GetComponent(/datum/component/size_normalized)
	if(comp?.attached_wear == src)
		qdel(comp)
	. = ..()

//NECK SLOT ITEMS...
//Syntech Pendant
/obj/item/clothing/neck/syntech
	name = "normalizer pendant"
	desc = "A vibrant violet jewel cast in silvery-gold metals, sporting the elegance of NanoTrasen with SynTech prowess. It will 'normalize' the size of the user to a specified height for approved work-conditions, as long as it is equipped. The artificial violet gem inside twinkles ominously."
	icon = 'modular_splurt/icons/obj/clothing/sizeaccessories.dmi'
	worn_icon = 'modular_splurt/icons/mob/clothing/neck.dmi'
	icon_state = "pendant"
	icon_state = "pendant"

//For neck items
/obj/item/clothing/neck/syntech/equipped(mob/living/user, slot)
	if(slot != ITEM_SLOT_NECK)
		return ..()

	if(user.GetComponent(/datum/component/size_normalized))
		to_chat(user, "<span class='warning'>\The [src] buzzes, being overwritten by another accessory.</span>")
		playsound(src, 'sound/machines/buzz-sigh.ogg', 50, 1)
	else
		user.AddComponent(/datum/component/size_normalized, wear=src)
	. = ..()

/obj/item/clothing/neck/syntech/dropped(mob/living/user, slot)
	var/datum/component/size_normalized/comp = user.GetComponent(/datum/component/size_normalized)
	if(comp?.attached_wear == src)
		qdel(comp)
	. = ..()

//Syntech Choker
/obj/item/clothing/neck/syntech/choker
	name = "normalizer choker"
	desc = "A sleek, tight-fitting choker embezzled with silver to gold, adorned with vibrant purple studs; combined technology of NanoTrasen and SynTech. It will 'normalize' the size of the user to a specified height for approved work-conditions, as long as it is equipped. There is a small screen buzzing with information."
	icon = 'modular_splurt/icons/obj/clothing/sizeaccessories.dmi'
	icon_state = "choker"
	icon_state = "collar"

//Syntech Collar
/obj/item/clothing/neck/syntech/collar
	name = "normalizer collar"
	desc = "A cute pet collar, technologically designed with vibrant purples and smooth silvers. There is a small gem bordered by gold at the front, reading 'SYNTECH' engraved within the metal. It will 'normalize' the size of the user to a specified height for approved work-conditions, as long as it is equipped. The artificial violet gem inside twinkles ominously."
	icon = 'modular_splurt/icons/obj/clothing/sizeaccessories.dmi'
	worn_icon = 'modular_splurt/icons/mob/clothing/neck.dmi'
	icon_state = "collar"
	icon_state = "collar"
