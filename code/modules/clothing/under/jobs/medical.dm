/obj/item/clothing/under/rank/medical/chief_medical_officer
	desc = "It's a jumpsuit worn by those with the experience to be \"Chief Medical Officer\". It provides minor biological protection."
	name = "chief medical officer's jumpsuit"
	icon_state = "cmo"
	item_state = "w_suit"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/rank/medical/chief_medical_officer/turtleneck
	desc = "It's a turtleneck worn by those with the experience to be \"Chief Medical Officer\". It provides minor biological protection, for an officer with a superior sense of style and practicality."
	name = "chief medical officer's turtleneck"
	icon_state = "cmoturtle"
	item_state = "w_suit"
	alt_covers_chest = TRUE
	mutantrace_variation = STYLE_DIGITIGRADE|USE_TAUR_CLIP_MASK

/obj/item/clothing/under/rank/medical/geneticist
	desc = "It's made of a special fiber that gives special protection against biohazards. It has a genetics rank stripe on it."
	name = "geneticist's jumpsuit"
	icon_state = "genetics"
	item_state = "w_suit"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/rank/medical/virologist
	desc = "It's made of a special fiber that gives special protection against biohazards. It has a virologist rank stripe on it."
	name = "virologist's jumpsuit"
	icon_state = "virology"
	item_state = "w_suit"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/rank/medical/chemist
	desc = "It's made of a special fiber that gives special protection against biohazards. It has a chemist rank stripe on it."
	name = "chemist's jumpsuit"
	icon_state = "chemistry"
	item_state = "w_suit"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 50, "acid" = 65)

/obj/item/clothing/under/rank/medical/paramedic
	desc = "It's made of a special fiber that provides minor protection against biohazards. It has a white cross on the chest denoting that the wearer is a trained paramedic."
	name = "paramedic jumpsuit"
	icon_state = "paramedic-dark"
	item_state = "w_suit"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/rank/medical/paramedic/light
	desc = "It's made of a special fiber that provides minor protection against biohazards. It has a dark blue cross on the chest denoting that the wearer is a trained paramedic."
	icon_state = "paramedic-light"

/obj/item/clothing/under/rank/medical/doctor/nurse
	desc = "It's a jumpsuit commonly worn by nursing staff in the medical department."
	name = "nurse's suit"
	icon_state = "nursesuit"
	item_state = "w_suit"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_NO_ANTHRO_ICON

/obj/item/clothing/under/rank/medical/doctor
	desc = "It's made of a special fiber that provides minor protection against biohazards. It has a cross on the chest denoting that the wearer is trained medical personnel."
	name = "medical doctor's jumpsuit"
	icon_state = "medical"
	item_state = "w_suit"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/rank/medical/doctor/blue
	name = "blue medical scrubs"
	desc = "It's made of a special fiber that provides minor protection against biohazards. This one is in baby blue."
	icon_state = "scrubsblue"
	can_adjust = FALSE

/obj/item/clothing/under/rank/medical/doctor/green
	name = "green medical scrubs"
	desc = "It's made of a special fiber that provides minor protection against biohazards. This one is in dark green."
	icon_state = "scrubsgreen"
	can_adjust = FALSE

/obj/item/clothing/under/rank/medical/doctor/purple
	name = "purple medical scrubs"
	desc = "It's made of a special fiber that provides minor protection against biohazards. This one is in deep purple."
	icon_state = "scrubspurple"
	can_adjust = FALSE

//Skyrat changes start    // All WIP aaaa
/obj/item/clothing/under/rank/medical/psychologist
	name = "psychologist's suit"
	desc = "A profesional looking suit, fitting of a psychologist, it seems oddly famliar."			//New sprite plz
	icon_state = "red_suit"									//No custom sprite atm
	item_state = "red_suit"
	can_adjust = FALSE

/obj/item/clothing/under/rank/medical/psychologist/skirt
	name = "psychologist's suitskirt"
	desc = "A profesional looking suitskirt, fitting of a psychologist, it seems oddly famliar."	//New sprite plz
	icon_state = "red_suit_skirt"							//No custom sprite atm
	item_state = "red_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_NO_ANTHRO_ICON
//Skyrat changes stop
