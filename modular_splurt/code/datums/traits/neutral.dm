// HYPERSTATION TRAITS

/datum/quirk/choke_slut
	name = "Асфиксиофилия"
	desc = "Вас возбуждает удушье."
	value = 0
	mob_trait = TRAIT_CHOKE_SLUT
	gain_text = span_notice("Вы хотите ощутить пальцы вокруг шеи, сжимающие её до тех пор, пока не отключитесь или кончите... а может, всё сразу?")
	lose_text = span_notice("Похоже, вас больше не возбуждает асфиксия.")
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/pharmacokinesis //Supposed to prevent unwanted organ additions. But i don't think it's really working rn
	name = "Острый Печеночный Фармакокинез" //copypasting dumbo
	desc = "У вас генетическое заболевание, которое заставляет печень усваивать семя инкуба и молоко суккуба при попадании их в организм."
	value = 0
	mob_trait = TRAIT_PHARMA
	lose_text = span_notice("Ваша печень ощущается... по-иному.")
	var/active = FALSE
	var/power = 0
	var/cachedmoveCalc = 1
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/steel_ass
	name = "Стальные Булки"
	desc = "Вы ни разу не пропускали день ягодиц. У вас полный иммунитет ко всем формам ударов по заднице, и любой, кто попытается наградить вас шлепком, как правило, получит перелом кисти."
	value = 0
	mob_trait = TRAIT_STEEL_ASS
	gain_text = span_notice("Ваш зад может составить конкуренцию големскому.")
	lose_text = span_notice("Ваш зад ощущается более мягким и уязвимым к шлепкам.")
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/cursed_blood
	name = "Проклятая Кровь"
	desc = "На вашем роду лежит проклятие бледной крови. Лучше держаться подальше от святой воды... а вот адской воды, напротив..."
	value = 0
	mob_trait = TRAIT_CURSED_BLOOD
	gain_text = span_notice("Проклятие с земель, где люди возвращаются зверьми, течёт в вашей крови.")
	lose_text = span_notice("Вы чувствуете, что тяжесть проклятия крови наконец пропала.")
	medical_record_text = "Организм пациента по неизвестной причине отторгает святые реагенты. Рекомендуется держать подальше от капеллана."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/headpat_hater
	name = "Отстраненность"
	desc = "Вам нет дела до ласки со стороны других. Будь то вследствие сдержанности или самоконтроля, получаемые поглаживания не заставят вилять хвостом, если таковой есть, ласка может даже разгневать."
	mob_trait = TRAIT_DISTANT
	value = 0
	gain_text = span_notice("Чужие прикосновения раздражают вас...")
	lose_text = span_notice("Теперь поглаживания не кажутся настолько уж плохими...")
	medical_record_text = "Пациента мало заботят или раздражают чужие прикосновения."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/headpat_slut
	name = "Тактилофилия"
	desc = "Вам нравится, когда другие прикасаются к вашей голове! Может, даже слишком... когда другие гладят вас по голове, это повышает ваше настроение и возбуждает вас."
	mob_trait = TRAIT_HEADPAT_SLUT
	value = 0
	gain_text = span_notice("Вы жаждете ласки!")
	lose_text = span_notice("Ваша зависимость от ласки исчезает.")
	medical_record_text = "Пациент очень любвеобильный."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/headpat_slut/add()
	. = ..()
	quirk_holder.AddElement(/datum/element/wuv/headpat, null, null, /datum/mood_event/pet_animal)

/datum/quirk/headpat_slut/remove()
	. = ..()
	quirk_holder.RemoveElement(/datum/element/wuv/headpat)

/datum/quirk/Hypnotic_gaze
	name = "Гипнотический Взгляд"
	desc = "Вследствие мистических узоров, мерцающих цветов или какой-нибудь генетической странности, длительный визуальный контакт с вами поместит наблюдателя в легковнушаемый гипнотический транс."
	value = 0
	mob_trait = TRAIT_HYPNOTIC_GAZE
	gain_text = span_notice("Ваши глаза завораживающе мерцают...")
	lose_text = span_notice("Ваша глаза становятся обычными.")
	medical_record_text = "Длительное воздействие глаз пациента влечет усыпляющий эффект."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/Hypnotic_gaze/add_unique()
	var/mob/living/carbon/human/Hypno_eyes = quirk_holder
	var/datum/action/innate/Hypnotize/spell = new
	spell.Grant(Hypno_eyes)
	spell.owner = Hypno_eyes

/datum/quirk/overweight
	name = "Лишний Вес"
	desc = "Вы обожаете еду и появляетесь на смене с лишним весом."
	value = 0
	gain_text = span_notice("Вы чувствуете себя толстым!")
	lose_text = span_notice("Вы думаете, что ваша кость больше не такая широкая.")
	icon = FA_ICON_QUESTION_CIRCLE
	//no lose_text cause why would there be?

/datum/quirk/overweight/add_unique()
	var/mob/living/M = quirk_holder
	M.nutrition = rand(NUTRITION_LEVEL_FAT + NUTRITION_LEVEL_START_MIN, NUTRITION_LEVEL_FAT + NUTRITION_LEVEL_START_MAX)
	M.overeatduration = 100
	ADD_TRAIT(M, TRAIT_FAT, OBESITY)

/datum/quirk/vegetarian
	name = "Вегетарианец"
	desc = "Мысли о поедании мяса для вас отвратительны."
	value = 0
	gain_text = span_notice("Вы чувствуете отвращение от мысли о поедании мяса.")
	lose_text = span_notice("Вы думаете, что поесть мяса не так уж и плохо.")
	medical_record_text = "Пациент соблюдает вегетарианскую диету."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/vegetarian/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.liked_food &= ~MEAT
	species.disliked_food |= MEAT

/datum/quirk/vegetarian/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		var/datum/species/species = H.dna.species
		if(initial(species.liked_food) & MEAT)
			species.liked_food |= MEAT
		if(initial(species.disliked_food) & ~MEAT)
			species.disliked_food &= ~MEAT

/datum/quirk/cum_plus
	name = "Сверхпродуктивные Гениталии"
	desc = "Ваши гениталии производят и вмещают больше, чем обычно."
	value = 0
	gain_text = span_notice("Вы чувствуете давление в паху.")
	lose_text = span_notice("Вы чувствуете, как ваш пах стал легче.")
	medical_record_text = "Гениталии пациента демонстрируют высокую продуктивность."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/cum_plus/add()
	var/mob/living/carbon/M = quirk_holder
	if(M.get_organ_slot("testicles"))
		var/obj/item/organ/external/genital/testicles/T = M.get_organ_slot("testicles")
		T.fluid_mult = 1.5 //Base is 1
		T.fluid_max_volume = 5

/datum/quirk/cum_plus/remove()
	var/mob/living/carbon/M = quirk_holder
	if(!M)
		return
	if(quirk_holder.get_organ_slot("testicles"))
		var/obj/item/organ/external/genital/testicles/T = M.get_organ_slot("testicles")
		T.fluid_mult = 1 //Base is 1
		T.fluid_max_volume = 3 //Base is 3

/datum/quirk/cum_plus/add_to_holder(mob/living/new_holder, quirk_transfer, client/client_source)
	var/mob/living/carbon/M = quirk_holder //If you get balls later, then this will still proc
	if(M.get_organ_slot("testicles"))
		var/obj/item/organ/external/genital/testicles/T = M.get_organ_slot("testicles")
		if(T.fluid_max_volume <= 5 || T.fluid_mult <= 0.2) //INVALID EXPRESSION?
			T.fluid_mult = 1.5 //Base is 0.133
			T.fluid_max_volume = 5

//well-trained moved to neutral to stop the awkward situation of a dom snapping and the 30 trait powergamers fall to the floor.
/datum/quirk/well_trained
	name = "Дрессированный"
	desc = "Вы обожаете, когда над вами доминируют. Мысли о том, что есть кто-то сильнее, достаточно, чтобы завести вас."
	value = 0
	gain_text = span_notice("Вы хотите подчиниться кому-нибудь...")
	lose_text = span_notice("Вы больше не хотите подчиняться...")
	quirk_flags = QUIRK_PROCESSES
	var/notice_delay = 0
	var/mob/living/carbon/human/last_dom
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/well_trained/add()
	. = ..()
	RegisterSignal(quirk_holder, COMSIG_PARENT_EXAMINE, PROC_REF(on_examine_holder))

/datum/quirk/well_trained/remove()
	. = ..()
	UnregisterSignal(quirk_holder, COMSIG_PARENT_EXAMINE)

/datum/quirk/well_trained/proc/on_examine_holder(atom/source, mob/living/user, list/examine_list)
	SIGNAL_HANDLER

	if(!istype(user))
		return
	if(!user.has_quirk(/datum/quirk/dominant_aura))
		return
	examine_list += span_lewd("Вы чувствуете сильную ауру подчинения от [quirk_holder.ru_na()].")

/datum/quirk/well_trained/add_to_holder(mob/living/new_holder, quirk_transfer, client/client_source)
	. = ..()
	if(!quirk_holder)
		return

	var/good_x = "хорошим питомцем"
	switch(quirk_holder.gender)
		if(MALE)
			good_x = "хорошим мальчиком"
		if(FEMALE)
			good_x = "хорошей девочкой"

	//Check for possible doms with the dominant_aura quirk, and for the closest one if there is
	. = FALSE
	var/list/mob/living/carbon/human/doms = range(DOMINANT_DETECT_RANGE, quirk_holder)
	var/closest_distance
	for(var/mob/living/carbon/human/dom in doms)
		if(dom != quirk_holder && dom.has_quirk(/datum/quirk/dominant_aura))
			if(!closest_distance || get_dist(quirk_holder, dom) <= closest_distance)
				. = dom
				closest_distance = get_dist(quirk_holder, dom)

	//Return if no dom is found
	if(!.)
		last_dom = null
		return

	//Handle the mood
	var/datum/mood/mood = quirk_holder.GetComponent(/datum/mood_event)
	if(istype(mood.mood_events[QMOOD_WELL_TRAINED], /datum/mood_event/dominant/good_boy))
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, QMOOD_WELL_TRAINED, /datum/mood_event/dominant/good_boy)
	else
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, QMOOD_WELL_TRAINED, /datum/mood_event/dominant/need)

	//Don't do anything if a previous dom was found
	if(last_dom)
		notice_delay = world.time + 15 SECONDS
		return

	last_dom = .

	if(notice_delay > world.time)
		return

	//Let them know they're near
	var/list/notices = list(
		"Вы ощущаете, как чьё-то присутствие делает вас более покорным...",
		"Мысли о том, чтобы вами командовали, заполняют ваш разум похотью...",
		"Вы хотите, чтобы вас назвали [good_x]...",
		"Чьё-то присутствие сильно возбуждает вас...",
		"Вы начинаете потеть и возбуждаться..."
	)

	to_chat(quirk_holder, span_lewd(pick(notices)))
	notice_delay = world.time + 15 SECONDS


//hydra code below

/datum/quirk/hydra
	name = "Головы Гидры"
	desc = "Вы трёхглавое создание. Оформите имя, как (Ваня-Саня-Даня)."
	value = 0
	mob_trait = TRAIT_HYDRA_HEADS
	gain_text = span_notice("Вы слышите два других голоса внутри головы(ов).")
	lose_text = span_danger("Ваш разум становится единым.")
	medical_record_text = "Пациент имеет несколько голов и личностей, присоединенных к телу."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/hydra/add_unique()
	var/mob/living/carbon/human/hydra = quirk_holder
	var/datum/action/innate/hydra/spell = new
	var/datum/action/innate/hydrareset/resetspell = new
	spell.Grant(hydra)
	spell.owner = hydra
	resetspell.Grant(hydra)
	resetspell.owner = hydra
	hydra.name_archive = hydra.real_name

//Own traits
/datum/quirk/cum_sniff
	name = "Дегустатор Гениталий"
	desc = "Вы набрались столько опыта, обсасывая чужие гениталии, что с легкостью можете сказать, какая жидкость находится внутри них, исключая реагенты в крови."
	value = 0
	mob_trait = TRAIT_GFLUID_DETECT
	gain_text = span_notice("Вы начинаете ощущать специфические запахи, исходящие от чужих промежностей...")
	lose_text = span_notice("Чужие гениталии начинают пахнуть для вас одинаково...")
	medical_record_text = "Пациент добивался того, чтобы доктор провёл яйцами по его лицу."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/fluid_infuser
	name = "Тядзин"
	desc = "Вы не упустили возможность приобрести новый жидкостный индуктор от NanoTrasen, как только он был выпущен, и теперь можете заскочить на станцию с изменяемым грудным молочком!"
	value = 0
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/fluid_infuser/add_unique()
	. = ..()
	var/obj/item/implant/genital_fluid/put_in = new
	put_in.implant(quirk_holder, null, TRUE, TRUE)

/datum/quirk/storage_concealment
	name = "Имплант Для Дорсуалифоба"
	desc = "У вас вызывает отвращение сама идея быть увиденным с любой ёмкостью для переноски, закрепленной на спине! Новая технология скрывает объект за вашей спиной, таким образом защищая вас от безмерного стыда."
	icon = FA_ICON_QUESTION_CIRCLE
	// UNUSED: Enable by setting these values to TRUE
	// The shame is unbearable
	quirk_flags = QUIRK_PROCESSES

/datum/quirk/storage_concealment/add_unique()
	. = ..()

	// Create a new augment item
	var/obj/item/implant/hide_backpack/put_in = new

	// Apply the augment to the quirk holder
	put_in.implant(quirk_holder, null, TRUE, TRUE)

/datum/quirk/storage_concealment/add_to_holder(mob/living/new_holder, quirk_transfer, client/client_source)
	// This trait should only be applied by the augment
	// Check the quirk holder for the trait
	if(HAS_TRAIT(quirk_holder, TRAIT_HIDE_BACKPACK))
		// When found: Mood bonus
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, QMOOD_HIDE_BAG, /datum/mood_event/dorsualiphobic_mood_positive)
	else
		// When not found: Mood penalty
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, QMOOD_HIDE_BAG, /datum/mood_event/dorsualiphobic_mood_negative)

//succubus and incubus below
/datum/quirk/incubus
	name = "Инкуб"
	desc = "Ваш голод может быть утолен только молоком. (И семенем, если вы также Суккуб.)"
	value = 0
	mob_trait = TRAIT_INCUBUS
	quirk_flags = QUIRK_PROCESSES
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/incubus/add()
	. = ..()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H,TRAIT_NOHUNGER,ROUNDSTART_TRAIT)
	ADD_TRAIT(H,TRAIT_NOTHIRST,ROUNDSTART_TRAIT)

/datum/quirk/incubus/remove()
	. = ..()
	var/mob/living/carbon/human/H = quirk_holder
	REMOVE_TRAIT(H,TRAIT_NOHUNGER,ROUNDSTART_TRAIT)
	REMOVE_TRAIT(H,TRAIT_NOTHIRST,ROUNDSTART_TRAIT)

/datum/quirk/incubus/add_to_holder(mob/living/new_holder, quirk_transfer, client/client_source)
	. = ..()
	var/mob/living/carbon/human/H = quirk_holder
	H.adjust_nutrition(-0.09)//increases their nutrition loss rate to encourage them to gain a partner they can essentially leech off of

/datum/quirk/succubus
	name = "Суккуб"
	desc = "Ваш голод может быть утолен только семенем. (И молоком, если вы также Инкуб.)"
	value = 0
	mob_trait = TRAIT_SUCCUBUS
	quirk_flags = QUIRK_PROCESSES
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/succubus/add()
	. = ..()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H,TRAIT_NOHUNGER,ROUNDSTART_TRAIT)
	ADD_TRAIT(H,TRAIT_NOTHIRST,ROUNDSTART_TRAIT)

/datum/quirk/succubus/remove()
	. = ..()
	var/mob/living/carbon/human/H = quirk_holder
	REMOVE_TRAIT(H,TRAIT_NOHUNGER,ROUNDSTART_TRAIT)
	REMOVE_TRAIT(H,TRAIT_NOTHIRST,ROUNDSTART_TRAIT)

/datum/quirk/succubus/add_to_holder(mob/living/new_holder, quirk_transfer, client/client_source)
	. = ..()
	var/mob/living/carbon/human/H = quirk_holder
	H.adjust_nutrition(-0.09)//increases their nutrition loss rate to encourage them to gain a partner they can essentially leech off of

/datum/quirk/werewolf //adds the werewolf quirk
	name = "Оборотень"
	desc = "Ликантропия позволяет вам перевоплощаться в большого прямоходящего волка."
	value = 0
	mob_trait = TRAIT_WEREWOLF
	gain_text = span_notice("Полная луна зовёт.")
	lose_text = span_notice("Зов луны растворяется в тишине.")
	medical_record_text = "Сообщалось, что пациент выл на ночное небо."
	var/list/old_features
	icon = FA_ICON_QUESTION_CIRCLE

/datum/quirk/werewolf/add()
	// Define old features
	old_features = list("species" = SPECIES_HUMAN, "legs" = "Plantigrade", "size" = 1, "bark")

	// Define quirk mob
	var/mob/living/carbon/human/quirk_mob = quirk_holder

	// Record features
	old_features = quirk_mob.dna.features.Copy()
	old_features["species"] = quirk_mob.dna.species.type
	old_features["custom_species"] = quirk_mob.custom_species
	old_features["size"] = get_size(quirk_mob)
	old_features["bark"] = quirk_mob.vocal_bark_id
	old_features["taur"] = quirk_mob.dna.features["taur"]

/datum/quirk/werewolf/post_add()
	// Define quirk action
	var/datum/action/cooldown/werewolf/transform/quirk_action = new

	// Grant quirk action
	quirk_action.Grant(quirk_holder)

/datum/quirk/werewolf/remove()
	// Define quirk action
	var/datum/action/cooldown/werewolf/transform/quirk_action = locate() in quirk_holder.actions

	// Revoke quirk action
	quirk_action.Remove(quirk_holder)

/datum/quirk/nudist
	// Mostly derived from masked_mook.
	// Spawning with a gear harness is preferable, but failed during testing.
	name = "Нудизм"
	desc = "Ношение большинства типов одежды нервирует вас. Несите портупею!"
	gain_text = span_notice("Вы чувствуете духовную связь со своим естеством.")
	lose_text = span_notice("Вы больше не чувствуете дискомфорта при ношении одежды.")
	medical_record_text = "Пациент выражает психологическую потребность оставаться без одежды."
	value = 0
	icon = FA_ICON_QUESTION_CIRCLE
	quirk_flags = QUIRK_PROCESSES

/datum/quirk/nudist/add_to_holder(mob/living/new_holder, quirk_transfer, client/client_source)
	var/mob/living/carbon/human/H = quirk_holder
	// Checking torso exposure appears to be a robust method.
	if( ( H.is_chest_exposed() && H.is_groin_exposed() ) )
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, QMOOD_NUDIST, /datum/mood_event/nudist_positive)
	else
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, QMOOD_NUDIST, /datum/mood_event/nudist_negative)

/datum/quirk/nudist/add_unique()
	. = ..()
	// Spawn a Rapid Disrobe Implant
	var/obj/item/implant/disrobe/quirk_implant = new

	// Implant into quirk holder
	quirk_implant.implant(quirk_holder, null, TRUE, TRUE)

/datum/quirk/masked_mook
	name = "Синдром Бейна"
	desc = "По какой-то причине вам... не по себе без противогаза на лице."
	gain_text = span_danger("Вы начинаете чувствовать себя нехорошо без противогаза.")
	lose_text = span_notice("У вас больше нет нужды в ношении противогаза.")
	value = 0
	icon = FA_ICON_QUESTION_CIRCLE
	medical_record_text = "Пациент чувствует себя более безопасно при ношении противогаза."
	quirk_flags = QUIRK_PROCESSES

/datum/quirk/masked_mook/add_to_holder(mob/living/new_holder, quirk_transfer, client/client_source)
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/clothing/mask/gas/gasmask = H.get_item_by_slot(ITEM_SLOT_MASK)
	if(istype(gasmask))
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, QMOOD_MASKED_MOOK, /datum/mood_event/masked_mook)
	else
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, QMOOD_MASKED_MOOK, /datum/mood_event/masked_mook_incomplete)

/datum/quirk/masked_mook/add_unique()
	. = ..()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/clothing/mask/gas/cosmetic/gasmask = new(get_turf(quirk_holder)) // Uses a custom gas mask
	H.equip_to_slot(gasmask, ITEM_SLOT_MASK)
	H.regenerate_icons()

/datum/quirk/kartavii
	name = "Картавый"
	desc = "Вы не знаете, как проговаривать букву \"Р\"."
	value = 0
	mob_trait = TRAIT_KARTAVII
	gain_text = span_notice("Забываю как проговаривать букву \"Р\".")
	lose_text = span_danger("Вспоминаю как проговаривать букву \"Р\".")
	medical_record_text = "Пациент не может проговаривать букву \"Р\"."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/proc/kartavo(message)
	var/num = rand(1, 3)
	switch(prob(75) && num)
		if(1)
			message = replacetextEx(message, "р", "г'")
			message = replacetextEx(message, "Р", "Г'")
		if(2)
			message = replacetextEx(message, "р", "гх")
			message = replacetextEx(message, "Р", "Гх")
		if(3)
			message = replacetextEx(message, "р", "гъ")
			message = replacetextEx(message, "Р", "Гъ")

	return message

/datum/quirk/asiat
	name = "Азиат"
	desc = "Долгое время работы в рисовых полях и жара палящего сверху солнца даровала вам этот прекрасный акцент."
	value = 0
	mob_trait = TRAIT_ASIAT
	gain_text = span_notice("Чиньг-чоньг!.")
	lose_text = span_danger("Аниме говно.")
	medical_record_text = "Пациент - азиат."
	icon = FA_ICON_QUESTION_CIRCLE

/datum/proc/asiatish(message)
	if(prob(75))
		message = replacetext_char(message, "ра", "ля")
		message = replacetext_char(message, "ла", "ля")
		message = replacetext_char(message, "ло", "льо")
		message = replacetext_char(message, "да", "тя")
		message = replacetext_char(message, "бо", "по")
		message = replacetext_char(message, "за", "ся")
		message = replacetext_char(message, "чу", "сю")
		message = replacetext_char(message, "та", "тя")
		message = replacetext_char(message, "же", "се")
		message = replacetext_char(message, "хо", "ха")
		message = replacetext_char(message, "гд", "кт")
		message = replacetextEx(message, "д", "т")
		message = replacetextEx(message, "ч", "с")
		message = replacetextEx(message, "з", "с")
		message = replacetextEx(message, "р", "л")
		message = replacetextEx(message, "ы", "и")
		message = replacetextEx(message, "Д", "т")
		message = replacetextEx(message, "Ч", "с")
		message = replacetextEx(message, "З", "с")
		message = replacetextEx(message, "Р", "л")
		message = replacetextEx(message, "Ы", "и")
	return message

