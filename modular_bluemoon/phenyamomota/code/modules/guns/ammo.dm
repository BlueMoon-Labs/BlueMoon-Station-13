//a556

/obj/projectile/bullet/a556
	name = "5.56mm bullet"
	damage = 20
	wound_bonus = -40

/obj/item/ammo_casing/a556
	name = "5.56mm bullet casing"
	desc = "A 5.56mm bullet casing."
	caliber = "a556"
	projectile_type = /obj/projectile/bullet/a556

/obj/item/ammo_box/a556
	name = "ammo box (5.56mm)"
	icon_state = "45box"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 30

/obj/projectile/bullet/a556_ap
	name = "5.56mm armor-piercing bullet"
	damage = 17
	wound_bonus = -40
	armour_penetration = 40

/obj/item/ammo_casing/a556/ap
	name = "5.56mm armor-piercing bullet casing"
	desc = "A 5.56mm armor-piercing bullet casing."
	projectile_type = /obj/projectile/bullet/a556_ap

/obj/item/ammo_box/a556/ap
	name = "ammo box (5.56mm armor-piercing)"
	icon_state = "45box"
	ammo_type = /obj/item/ammo_casing/a556/ap
	max_ammo = 30

/obj/projectile/bullet/a556_hp
	name = "5.56mm hollow-point bullet"
	damage = 28
	wound_bonus = -40
	armour_penetration = -50

/obj/item/ammo_casing/a556/hp
	name = "5.56mm hollow-point bullet casing"
	desc = "A 5.56mm hollow-point bullet casing."
	projectile_type = /obj/projectile/bullet/a556_hp

/obj/item/ammo_box/a556/hp
	name = "ammo box (5.56mm hollow-point)"
	icon_state = "45box"
	ammo_type = /obj/item/ammo_casing/a556/hp
	max_ammo = 30

/obj/projectile/bullet/a556_rubber
	name = "5.56mm rubber bullet"
	damage = 1
	stamina = 30
	sharpness = NONE
	embedding = null

/obj/item/ammo_casing/a556/rubber
	name = "5.56mm rubber bullet casing"
	desc = "A 5.56mm rubber bullet casing."
	projectile_type = /obj/projectile/bullet/a556_rubber

/obj/item/ammo_box/a556/rubber
	name = "ammo box (5.56mm rubber)"
	icon_state = "45box"
	ammo_type = /obj/item/ammo_casing/a556/rubber
	max_ammo = 30

//a762x39

/obj/projectile/bullet/a762x39
	name = "7.62x39 bullet"
	damage = 25
	wound_bonus = -35

/obj/item/ammo_casing/a762x39
	name = "7.62x39 bullet casing"
	desc = "A 7.62x39 bullet casing."
	icon_state = "762-casing"
	caliber = "a762x39"
	projectile_type = /obj/projectile/bullet/a762x39

/obj/item/ammo_box/a762x39
	name = "ammo box (7.62x39)"
	icon_state = "10mmbox"
	ammo_type = /obj/item/ammo_casing/a762x39
	max_ammo = 30

/obj/projectile/bullet/a762x39_ap
	name = "7.62x39 armor-piercing bullet"
	damage = 22
	wound_bonus = -35
	armour_penetration = 40

/obj/item/ammo_casing/a762x39/ap
	name = "7.62x39 armor-piercing bullet casing"
	desc = "A 7.62x39 armor-piercing bullet casing."
	projectile_type = /obj/projectile/bullet/a762x39_ap

/obj/item/ammo_box/a762x39/ap
	name = "ammo box (7.62x39 armor-piercing)"
	icon_state = "10mmbox"
	ammo_type = /obj/item/ammo_casing/a762x39/ap
	max_ammo = 30

/obj/projectile/bullet/a762x39_hp
	name = "7.62x39 hollow-point bullet"
	damage = 32
	wound_bonus = -35
	armour_penetration = -50

/obj/item/ammo_casing/a762x39/hp
	name = "7.62x39 hollow-point bullet casing"
	desc = "A 7.62x39 hollow-point bullet casing."
	projectile_type = /obj/projectile/bullet/a762x39_hp

/obj/item/ammo_box/a762x39/hp
	name = "ammo box (7.62x39 hollow-point)"
	icon_state = "10mmbox"
	ammo_type = /obj/item/ammo_casing/a762x39/hp
	max_ammo = 30

/obj/projectile/bullet/a762x39_rubber
	name = "7.62x39 rubber bullet"
	damage = 1
	stamina = 30
	sharpness = NONE
	embedding = null

/obj/item/ammo_casing/a762x39/rubber
	name = "7.62x39 rubber bullet casing"
	desc = "A 7.62x39 rubber bullet casing."
	projectile_type = /obj/projectile/bullet/a762x39_rubber

/obj/item/ammo_box/a762x39/rubber
	name = "ammo box (7.62x39 rubber)"
	icon_state = "10mmbox"
	ammo_type = /obj/item/ammo_casing/a762x39/rubber
	max_ammo = 30
