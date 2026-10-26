/datum/configuration_section/vote_configuration
	protection_state = PROTECTION_READONLY
	var/vote_period = 600
	var/vote_delay = 6000
	var/default_no_vote = FALSE
	var/no_dead_vote = FALSE
	var/vote_adjustment_callback = FALSE
	var/allow_vote_restart = TRUE

/datum/configuration_section/vote_configuration/load_data(list/data)
	CONFIG_LOAD_NUM(vote_period, data["vote_period"])
	CONFIG_LOAD_NUM(vote_delay, data["vote_delay"])
	CONFIG_LOAD_BOOL(default_no_vote, data["default_no_vote"])
	CONFIG_LOAD_BOOL(no_dead_vote, data["no_dead_vote"])
	CONFIG_LOAD_BOOL(vote_adjustment_callback, data["vote_adjustment_callback"])
	CONFIG_LOAD_BOOL(allow_vote_restart, data["allow_vote_restart"])
