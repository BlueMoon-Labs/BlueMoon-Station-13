/obj/item/organ/external/genital/womb
	name = "womb"
	desc = "A female reproductive organ."
	icon = 'icons/obj/genitals/vagina.dmi'
	icon_state = "womb"
	zone = BODY_ZONE_PRECISE_GROIN
	slot = ORGAN_SLOT_WOMB
	genital_flags = GENITAL_INTERNAL|GENITAL_FLUID_PRODUCTION|HAS_EQUIPMENT
	fluid_id = /datum/reagent/consumable/semen/femcum
	linked_organ_slot = ORGAN_SLOT_VAGINA

/obj/item/organ/external/genital/womb/get_features(mob/living/carbon/human/H)
	var/datum/dna/D = H.dna
	if(D.features["inert_eggs"])
		AddComponent(/datum/component/ovipositor)

/datum/sprite_accessory/genital/womb
	organ_type = /obj/item/organ/external/genital/womb
	key = ORGAN_SLOT_WOMB
	genetic = TRUE
	always_color_customizable = TRUE

/datum/sprite_accessory/genital/womb/none
	icon_state = "none"
	name = "None"
	factual = FALSE
	color_src = null

/datum/sprite_accessory/genital/womb/normal
	icon_state = "none"
	name = "normal"
	color_src = null
