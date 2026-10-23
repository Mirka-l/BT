/datum/configuration_section/event_configuration
	var/events_disallowed = TRUE

/datum/configuration_section/event_configuration/load_data(list/data)
	CONFIG_LOAD_STR(events_disallowed, data["events_disallowed"])
