/datum/configuration_section/database_configuration
	var/db_debug_mode = FALSE
	var/db_address
	var/db_port
	var/db_username
	var/db_password
	var/db_database
	var/db_min_threads
	var/db_max_threads
	var/db_filename
	var/db_provider

/datum/configuration_section/database_configuration/load_data(list/data)
	CONFIG_LOAD_BOOL(db_debug_mode, data["db_debug_mode"])

	CONFIG_LOAD_STR(db_address, data["db_address"])
	CONFIG_LOAD_STR(db_port, data["db_port"])
	CONFIG_LOAD_STR(db_username, data["db_username"])
	CONFIG_LOAD_STR(db_password, data["db_password"])
	CONFIG_LOAD_STR(db_database, data["db_database"])
	CONFIG_LOAD_STR(db_min_threads, data["db_min_threads"])
	CONFIG_LOAD_STR(db_max_threads, data["db_max_threads"])
	CONFIG_LOAD_STR(db_filename, data["db_filename"])
	CONFIG_LOAD_STR(db_provider, data["db_provider"])
