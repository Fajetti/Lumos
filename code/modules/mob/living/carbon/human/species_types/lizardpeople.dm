/datum/species/lizard
	// Reptilian humanoids with scaled skin and tails.
	name = "Anthromorphic Lizard"
	id = "lizard"
	say_mod = "hisses"
	default_color = "00FF00"
	species_traits = list(MUTCOLORS,EYECOLOR,HAIR,FACEHAIR,LIPS,HORNCOLOR,WINGCOLOR,CAN_SCAR,HAS_SKIN,HAS_FLESH,HAS_BONE) //skyrat edit
	mutant_bodyparts = list("tail_lizard", "snout", "spines", "horns", "frills", "body_markings", "legs", "taur", "deco_wings")
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_REPTILE
	mutanttongue = /obj/item/organ/tongue/lizard
	mutanttail = /obj/item/organ/tail/lizard
	coldmod = 1.5
	heatmod = 0.67
	mutant_bodyparts = list("mcolor" = "0F0", "mcolor2" = "0F0", "mcolor3" = "0F0", "tail_lizard" = "Smooth", "snout" = "Round",
							 "horns" = "None", "frills" = "None", "spines" = "None", "body_markings" = "None",
							  "legs" = "Digitigrade", "taur" = "None", "deco_wings" = "None")
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/lizard
	gib_types = list(/obj/effect/gibspawner/lizard, /obj/effect/gibspawner/lizard/bodypartless)
	skinned_type = /obj/item/stack/sheet/animalhide/lizard
	exotic_bloodtype = "L"
	exotic_blood_color = BLOOD_COLOR_LIZARD
	disliked_food = GRAIN | DAIRY
	liked_food = GROSS | MEAT
	inert_mutation = FIREBREATH
	//Skyrat change - blood
	bloodtypes = list("A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-", "L")
	languagewhitelist = list("Draconic") //Skyrat change - species language whitelist
	//

/datum/species/lizard/after_equip_job(datum/job/J, mob/living/carbon/human/H)
	//H.grant_language(/datum/language/draconic)
	species_language_holder = /datum/language_holder/lizard
/*
/datum/species/lizard/after_equip_job(datum/job/J, mob/living/carbon/human/H)
	H.grant_language(/datum/language/draconic) SKYRAT CHANGE= We have an additional language option for this
*/
/datum/species/lizard/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_lizard_name(gender)

	var/randname = lizard_name(gender)

	if(lastname)
		randname += " [lastname]"

	return randname

/datum/species/lizard/qualifies_for_rank(rank, list/features)
	return TRUE

//I wag in death
/datum/species/lizard/spec_death(gibbed, mob/living/carbon/human/H)
	if(H)
		stop_wagging_tail(H)

/datum/species/lizard/spec_stun(mob/living/carbon/human/H,amount)
	if(H)
		stop_wagging_tail(H)
	. = ..()

/datum/species/lizard/can_wag_tail(mob/living/carbon/human/H)
	return mutant_bodyparts["tail_lizard"] || mutant_bodyparts["waggingtail_lizard"]

/datum/species/lizard/is_wagging_tail(mob/living/carbon/human/H)
	return mutant_bodyparts["waggingtail_lizard"]

/datum/species/lizard/start_wagging_tail(mob/living/carbon/human/H)
	if(mutant_bodyparts["tail_lizard"])
		mutant_bodyparts["waggingtail_lizard"] = mutant_bodyparts["tail_lizard"]
		mutant_bodyparts["waggingspines"] = mutant_bodyparts["spines"]
		mutant_bodyparts -= "tail_lizard"
		mutant_bodyparts -= "spines"
	H.update_body()

/datum/species/lizard/stop_wagging_tail(mob/living/carbon/human/H)
	if(mutant_bodyparts["waggingtail_lizard"])
		mutant_bodyparts["tail_lizard"] = mutant_bodyparts["waggingtail_lizard"]
		mutant_bodyparts["spines"] = mutant_bodyparts["waggingspines"]
		mutant_bodyparts -= "waggingtail_lizard"
		mutant_bodyparts -= "waggingspines"
	H.update_body()

/*
 Lizard subspecies: ASHWALKERS
 Primitive lizards hailing from the ashen caves of Lavaland
 Religiously devoted to The Necropolis, treats Lavaland as their holy land
 Note: Use ashwalker_desc for flavor on anything in the /items paths - Be vauge!
*/
/datum/species/lizard/ashwalker
	name = "Ash Walker"
	id = "ashlizard"
	limbs_id = "lizard"
	species_traits = list(MUTCOLORS,NO_UNDERWEAR,EYECOLOR,LIPS,DIGITIGRADE,NOAROUSAL)
	inherent_traits = list(TRAIT_CHUNKYFINGERS)
	sexes = 0 // Man's world
	dangerous_existence = 1 // Due to them not breathing station air
	mutantlungs = /obj/item/organ/lungs/ashwalker
	default_color = "#636463"
	fixed_mut_color = "#636463"
	burnmod = 0.8
	brutemod = 0.9
	species_language_holder = /datum/language_holder/lizard/ash

/datum/species/lizard/ashwalker/on_species_gain(mob/living/carbon/human/C, datum/species/old_species)
	if((C.dna.features["spines"] != "None" ) && (C.dna.features["tail_lizard"] == "None")) //tbh, it's kinda ugly for them not to have a tail yet have floating spines
		C.dna.features["tail_lizard"] = "Smooth"
		C.update_body()
	/*if(C.dna.features["legs"] != "digitigrade") //Skyrat change - comments this out cause im pretty sure this will bug them out either by update_body being called too soon or no capitalisation on the legs, and we've got a fix for this in modular_skyrat
		C.dna.features["legs"] = "digitigrade"
		for(var/obj/item/bodypart/leggie in C.bodyparts)
			if(leggie.body_zone == BODY_ZONE_L_LEG || leggie.body_zone == BODY_ZONE_R_LEG)
				leggie.update_limb(FALSE, C)*/
	return ..()
