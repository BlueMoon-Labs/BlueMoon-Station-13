/obj/item/reagent_containers/hypospray/medipen/crocin
	name = "Emergency aphrodisiac shot"
	desc = "A medipen made to treat people suffering from low libido, a terrible sickness no one should endure."
	icon = 'modular_splurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "crocinpen"
	icon_state = "crocinpen"
	volume = 30
	amount_per_transfer_from_this = 30
	list_reagents = list(/datum/reagent/drug/aphrodisiac/crocin = 30)

/obj/item/reagent_containers/hypospray/medipen/crocin/plus
	name = "Shot of concentrated lust"
	desc = "Use this in case the case of low libido can't be cured using conventional aphrodisiacs."
	icon = 'modular_splurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "hcrocinpen"
	icon_state = "hcrocinpen"
	list_reagents = list(/datum/reagent/drug/aphrodisiac/crocin/hexacrocin = 30)

/obj/item/reagent_containers/hypospray/medipen/breastgrowth
	name = "Succubus milk autoinjector"
	desc = "A medipen used to create stable sources of milk in little time. Side effects <b>will</b> include mammary swelling."
	icon = 'modular_splurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "succupen"
	icon_state = "succupen"
	volume = 30
	amount_per_transfer_from_this = 30
	list_reagents = list(/datum/reagent/drug/aphrodisiac/succubus_milk = 30)

/obj/item/reagent_containers/hypospray/medipen/penisgrowth
	name = "Incubus draft autoinjector"
	desc = "A medipen used to help with urgent cases of \"small cock\"."
	icon = 'modular_splurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "incupen"
	icon_state = "incupen"
	volume = 30
	amount_per_transfer_from_this = 30
	list_reagents = list(/datum/reagent/drug/aphrodisiac/incubus_draft = 30)

/obj/item/reagent_containers/hypospray/medipen/buttgrowth
	name = "Denbu Tincture autoinjector"
	desc = "Also known as \"Emergency cozy beanbags deployer\"."
	icon = 'modular_splurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "denbupen"
	icon_state = "denbupen"
	volume = 30
	amount_per_transfer_from_this = 30
	list_reagents = list(/datum/reagent/growthchem = 15) //list(/datum/reagent/fermi/butt_enlarger = 30)

/obj/item/reagent_containers/hypospray/medipen/bellygrowth
	name = "Belladine nectar autoinjector"
	desc = "Colloquially known as \"Emergency reverse liposuction\" or \"Gastric wind bomb\"."
	icon = 'modular_splurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "bellypen"
	icon_state = "bellypen"
	volume = 30
	amount_per_transfer_from_this = 30
	list_reagents = list(/datum/reagent/growthchem = 15) //list(/datum/reagent/fermi/belly_inflator = 30)

/obj/item/reagent_containers/hypospray/medipen/prospacillin
	name = "Extra height shot"
	desc = "Made to quickly treat individuals catalogued as \"manlets\" and help them reach the station's shelves."
	icon = 'modular_splurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "prospen"
	icon_state = "prospen"
	volume = 30
	amount_per_transfer_from_this = 30
	list_reagents = list(/datum/reagent/growthchem = 30)

/obj/item/reagent_containers/hypospray/medipen/prospacillin/Initialize(mapload, vol)
	. = ..()
	if(prob(50))
		desc = "Macro haters' worst enemy"

/obj/item/reagent_containers/hypospray/medipen/lewdbomb
	name = "La Coom Bomb"
	desc = "Someone forgot what reagent was supposed to go in this one, so they just mixed all the funny ones into it's case... Oh my..."
	icon = 'modular_splurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_splurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "bombpen"
	icon_state = "bombpen"
	volume = 60
	amount_per_transfer_from_this = 60
	list_reagents = list(
		/datum/reagent/drug/aphrodisiac/crocin/hexacrocin = 10,
		/datum/reagent/drug/aphrodisiac/succubus_milk = 10,
		/datum/reagent/drug/aphrodisiac/incubus_draft = 10,
		//datum/reagent/fermi/butt_enlarger = 10,
		//datum/reagent/fermi/belly_inflator = 10,
		/datum/reagent/growthchem = 10
	)
