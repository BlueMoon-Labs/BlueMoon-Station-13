/obj/item/organ/external/genital/anus
	name = "анус"
	desc = "You see their squishy donut pucker parting their asscheeks"
	icon_state = "anus"
	zone = BODY_ZONE_PRECISE_GROIN
	slot = ORGAN_SLOT_ANUS
	mutantpart_key = ORGAN_SLOT_ANUS
	mutantpart_info = list(MUTANT_INDEX_NAME = "Normal", MUTANT_INDEX_COLOR_LIST = list("FEB"))
	size = 0
	arousal_verb = "Your donut quivers"
	unarousal_verb = "Your pucker stops twitching"
	linked_organ_slot = ORGAN_SLOT_BUTT
	genital_flags = UPDATE_OWNER_APPEARANCE|GENITAL_UNDIES_HIDDEN|CAN_CUM_INTO|HAS_EQUIPMENT
	shape = "пончиковидный"
	layer_index = ANUS_LAYER_INDEX
	bodypart_overlay = /datum/bodypart_overlay/mutant/genital/anus

/datum/bodypart_overlay/mutant/genital/anus
	feature_key = ORGAN_SLOT_ANUS
	layers = EXTERNAL_FRONT | EXTERNAL_BEHIND

/datum/bodypart_overlay/mutant/genital/anus/get_global_feature_list()
	return GLOB.sprite_accessories[ORGAN_SLOT_ANUS]

/obj/item/organ/external/genital/anus/upon_link()
	. = ..()
	size = linked_organ.size
	update_size()
	update_appearance()

/obj/item/organ/external/genital/anus/update_appearance(updates)
	var/u_His = owner?.ru_ego() || "their"

	var/datum/sprite_accessory/genital/anus/S = GLOB.anus_shapes_list[shape]
	var/lowershape = lowertext(S?.icon_state || DEF_ANUS_SHAPE)

	desc = "Вы наблюдаете [u_His] сплюснутый [lowershape] анус между [u_His] ягодицами"

	icon_state = "anus_[lowershape]_[size]"
	if(owner)
		if(owner.dna.species.use_skintones && owner.dna.features["genitals_use_skintone"])
			if(ishuman(owner)) // Check before recasting type, although someone fucked up if you're not human AND have use_skintones somehow...
				var/mob/living/carbon/human/H = owner // only human mobs have skin_tone, which we need.
				color = SKINTONE2HEX(H.skin_tone)
				if(!H.dna.skin_tone_override)
					icon_state += "_s"
		else
			color = "#[owner.dna.features["anus_color"]]"
	. = ..()

/obj/item/organ/external/genital/anus/get_features(mob/living/carbon/human/H)
	var/datum/dna/D = H.dna
	if(D.species.use_skintones && D.features["genitals_use_skintone"])
		color = SKINTONE2HEX(H.skin_tone)
	else
		color = "#[D.features["anus_color"]]"
	shape = D.features["anus_shape"]
	toggle_visibility(D.features["anus_visibility"], FALSE)
	if(D.features["anus_stuffing"])
		toggle_visibility(GEN_ALLOW_EGG_STUFFING, FALSE)
	. = ..()

/obj/item/organ/external/genital/anus/toggle_visibility(visibility, update = TRUE)
	var/previous_flags = genital_flags
	. = ..()
	var/obj/item/organ/external/genital/butt/tush = linked_organ
	if(!is_exposed() || tush?.is_exposed())
		return .
	genital_flags = previous_flags
	if(update && owner && ishuman(owner)) //recast to use update genitals proc
		var/mob/living/carbon/human/H = owner
		H.update_genitals()

/datum/sprite_accessory/genital/anus
	icon = 'modular_splurt/icons/obj/genitals/anus_onmob.dmi'
	organ_type = /obj/item/organ/external/genital/anus
	icon_state = "anus"
	color_src = "anus_color"
	key = ORGAN_SLOT_ANUS

/datum/sprite_accessory/genital/anus/none
	icon_state = "none"
	name = "None"
	factual = FALSE
	color_src = null

/datum/sprite_accessory/genital/anus/donut
	icon_state = "anus"
	name = "Anus"

/datum/sprite_accessory/genital/anus/squished
	icon_state = "squished"
	name = "Squished"
