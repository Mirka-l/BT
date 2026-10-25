/datum/configuration_section/redis_configuration
	protection_state = PROTECTION_PRIVATE
	var/instance_name
	var/redis_logging
	var/redis_enabled
	var/redis_connection

/datum/configuration_section/redis_configuration/load_data(list/data)
	CONFIG_LOAD_STR(instance_name, data["instance_name"])
	CONFIG_LOAD_STR(redis_logging, data["redis_logging"])
	CONFIG_LOAD_STR(redis_enabled, data["redis_enabled"])
	CONFIG_LOAD_STR(redis_connection, data["redis_connection"])
