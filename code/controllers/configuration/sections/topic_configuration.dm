/datum/configuration_section/topic_configuration
	protection_state = PROTECTION_PRIVATE
	var/topic_tokens
	var/topic_max_size = 1
	var/log_world_topic = TRUE
	var/minute_topic_limit = 1
	var/second_topic_limit = 1

/datum/configuration_section/topic_configuration/load_data(list/data)
	CONFIG_LOAD_STR(topic_tokens, data["topic_toke_url"])
	CONFIG_LOAD_NUM(topic_max_size, data["topic_max_size"])
	CONFIG_LOAD_BOOL(log_world_topic, data["log_world_topic"])
	CONFIG_LOAD_NUM(minute_topic_limit, data["minute_topic_limit"])
	CONFIG_LOAD_NUM(second_topic_limit, data["second_topic_limit"])
