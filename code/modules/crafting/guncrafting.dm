//Gun crafting parts til they can be moved elsewhere

// PARTS //

/obj/item/weaponcrafting/receiver
	name = "modular receiver"
	desc = "A prototype modular receiver and trigger assembly for a firearm."
	icon = 'icons/obj/improvised.dmi'
	icon_state = "receiver"

/obj/item/weaponcrafting/stock
	name = "rifle stock"
	desc = "A classic rifle stock that doubles as a grip, roughly carved out of wood."
	icon = 'icons/obj/improvised.dmi'
	icon_state = "riflestock"


/obj/machinery/autolathe/ammobench
	name = "universal reloading bench"
	desc = "A reloading bench used for inefficiently  crafting new ammunition out of scrap metal. There's a substantial supply of powder and primer. This one can be used to craft most NCR and Legion rounds."
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
//	machine_tool_behaviour = list(TOOL_LEGION, TOOL_NCR)
	categories = list("Security")
	super_advanced_technology = FALSE

/obj/machinery/ammobench
	name = "pre-war reloading press"
	desc = "A high quality reloading press from before the war. Capable of cheap, mass production of ammunition."
	icon = 'icons/obj/machines/heavy_lathe.dmi' //placeholder
	icon_state = "h_lathe" //placeholder
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = TOOL_RELOADER

/obj/machinery/ammobench/makeshift
	name = "makeshift reloading press"
	desc = "A makeshift reloading press capable of producing ammunition rather inefficiently."
	icon = 'icons/obj/machines/mining_machines.dmi' //placeholder
	icon_state = "unloader-corner" //placeholder
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = TOOL_MSRELOADER

/obj/machinery/ammobench/makeshift/wrench_act(mob/living/user, obj/item/I)
	default_unfasten_wrench(user, I, 10)
	return TRUE


/obj/machinery/ammobench/ncr
	name = "NCR reloading bench"
	desc = "A reloading bench used for inefficiently  crafting new ammunition out of scrap metal. There's a substantial supply of powder and primer. This one can be used to create most NCR rounds."
	icon = 'icons/obj/recycling.dmi' //placeholder
	icon_state = "grinder-b1" //placeholder
	machine_tool_behaviour = TOOL_NCR

/obj/machinery/ammobench/legion
	name = "Legion reloading bench"
	desc = "A reloading bench used for inefficiently crafting new ammunition out of scrap metal. There's a substantial supply of powder and primer. This one can be used to create most Legion rounds."
	icon = 'icons/obj/recycling.dmi' //placeholder
	icon_state = "grinder-b1" //placeholder
	machine_tool_behaviour = TOOL_NCR