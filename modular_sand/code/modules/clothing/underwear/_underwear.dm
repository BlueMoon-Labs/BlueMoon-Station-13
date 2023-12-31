/obj/item/clothing/under
	hide_underwear_examine = TRUE

/obj/machinery/vending/clothing/New(loc, ...)
	. = ..()
	products[/obj/item/clothing/head/wig] = 5
	for(var/P in typesof(/datum/loadout_item/underwear))
		var/datum/loadout_item/G = P
		products[initial(G.item_path)] = 5
	for(var/P in typesof(/datum/loadout_item/shirt))
		var/datum/loadout_item/G = P
		products[initial(G.item_path)] = 5
	for(var/P in typesof(/datum/loadout_item/socks))
		var/datum/loadout_item/G = P
		products[initial(G.item_path)] = 5

//Fuck it we making underwear actual items
/obj/item/clothing/underwear
	name = "Underwear"
	desc = "If you're reading this, something went wrong."
	icon = 'modular_sand/icons/mob/clothing/underwear.dmi' //if someone is willing to make proper inventory sprites that'd be very cash money
	worn_icon = 'modular_sand/icons/mob/clothing/underwear.dmi'
	worn_icon_digi = 'modular_sand/icons/mob/clothing/underwear_digi.dmi'
	body_parts_covered = GROIN
	slot_flags = ITEM_SLOT_UNDERWEAR
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION
	w_class = WEIGHT_CLASS_SMALL
	var/fitted = FEMALE_UNIFORM_TOP_ONLY

/obj/item/clothing/underwear/Move()
	..()
	setDir(SOUTH) //should prevent underwear from facing any direction but south while on the floor, uses same code as pipes, PLEASE, THIS IS A BAD SOLUTION, SOMEONE MAKE ME UNDERWEAR SPRITES ASAP

///Proc to check if undershirt is hidden.
/mob/living/carbon/human/proc/undershirt_hidden()
	for(var/obj/item/I in list(w_uniform, wear_suit))
		if(istype(I) && ((I.body_parts_covered & CHEST) || (I.flags_inv & HIDEUNDERWEAR)))
			return TRUE
	return FALSE

///Proc to check if underwear is hidden.
/mob/living/carbon/human/proc/underwear_hidden()
	for(var/obj/item/I in list(w_uniform, wear_suit))
		if(istype(I) && ((I.body_parts_covered & GROIN) || (I.flags_inv & HIDEUNDERWEAR)))
			return TRUE
	return FALSE

///Proc to check if socks are hidden.
/mob/living/carbon/human/proc/socks_hidden()
	for(var/obj/item/I in list(shoes, wear_suit))
		if(istype(I) && ((I.body_parts_covered & FEET) || (I.flags_inv & HIDEUNDERWEAR)))
			return TRUE
	return FALSE
