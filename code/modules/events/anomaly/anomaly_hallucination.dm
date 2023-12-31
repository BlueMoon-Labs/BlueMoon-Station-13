/datum/round_event_control/anomaly/anomaly_hallucination
	name = "Anomaly: Hallucination"
	typepath = /datum/round_event/anomaly/anomaly_hallucination

	min_players = 10
	max_occurrences = 5
	weight = 20
	description = "This anomaly causes you to hallucinate."
	min_wizard_trigger_potency = 0
	max_wizard_trigger_potency = 2

/datum/round_event/anomaly/anomaly_hallucination
	start_when = ANOMALY_START_MEDIUM_TIME
	announce_when = ANOMALY_ANNOUNCE_MEDIUM_TIME
	anomaly_path = /obj/effect/anomaly/hallucination

/datum/round_event/anomaly/anomaly_hallucination/announce(fake)
	priority_announce("Галлюцинаторное Блюспейс-Событие обнаружено на [ANOMALY_ANNOUNCE_MEDIUM_TEXT] [impact_area.name].", "Аномальная Тревога", ANNOUNCER_ANOMALIES) //SKYRAT EDIT CHANGE
