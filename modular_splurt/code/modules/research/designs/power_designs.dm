//Jessie Added this
/datum/design/bluespace_cell_reactor
	name = "Bluespace Reactor Power Cell"
	desc = "A power cell that holds 5 MJ of energy."
	id = "bluespace_cell_reactor"
	build_type = PROTOLATHE | AWAY_LATHE | MECHFAB
	materials = list(/datum/material/iron = 1200, /datum/material/gold = 260, /datum/material/glass = 360, /datum/material/diamond = 560, /datum/material/titanium = 600, /datum/material/bluespace = 1200, /datum/material/uranium = 2600)
	construction_time=100
	build_path = /obj/item/stock_parts/cell/bluespacereactor
	category = list(
		RND_CATEGORY_STOCK_PARTS + RND_SUBCATEGORY_STOCK_PARTS_4
	)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE | DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/vortex_cell
	build_type = PROTOLATHE
	category = list("Power Designs")
