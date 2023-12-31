//A slow, melee, crazy miner.
/mob/living/simple_animal/hostile/asteroid/miner
	name = "shambling miner"
	desc = "Consumed by the ash storm, this shell of a human being only seeks to harm those he once called coworkers."
	icon = 'modular_sand/icons/mob/lavaland/lavaland_monsters.dmi'
	icon_state = "miner"
	icon_living = "miner"
	icon_aggro = "miner"
	icon_dead = "miner_dead"
	icon_gib = "syndicate_gib"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	mouse_opacity = MOUSE_OPACITY_OPAQUE
	ranged = 0
	friendly_verb_continuous = "hugs"
	friendly_verb_simple = "hug"
	speak_emote = list("moans")
	speed = 1
	move_to_delay = 3
	maxHealth = 200
	health = 200
	obj_damage = 100
	melee_damage_lower = 20
	melee_damage_upper = 20
	attack_verb_continuous = "smashes"
	attack_verb_simple = "smash"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	throw_message = "barely affects the"
	vision_range = 3
	aggro_vision_range = 7
	move_force = MOVE_FORCE_VERY_STRONG
	move_resist = MOVE_FORCE_VERY_STRONG
	pull_force = MOVE_FORCE_VERY_STRONG
	loot = list()
	crusher_loot = /obj/item/crusher_trophy/blaster_tubes/mask
	butcher_results = list(/obj/item/food/meat/slab/human = 2, /obj/item/stack/sheet/animalhide/human = 1, /obj/item/stack/sheet/bone = 1)
	robust_searching = FALSE
	footstep_type = FOOTSTEP_MOB_SHOE
	minimum_distance = 1

/mob/living/simple_animal/hostile/asteroid/miner/death(gibbed)
	. = ..()
	move_force = MOVE_FORCE_DEFAULT
	move_resist = MOVE_RESIST_DEFAULT
	pull_force = PULL_FORCE_DEFAULT
	if(prob(15))
		new /obj/item/kinetic_crusher/rusted(src.loc)
