GLOBAL_DATUM_INIT(configuration, /datum/server_configuration, new())

/datum/server_configuration
	var/datum/configuration_section/general_configuration/general
	var/datum/configuration_section/logging_configuration/logging
	var/datum/configuration_section/options_configuration/options
	var/datum/configuration_section/mc_configuration/mc
	var/datum/configuration_section/event_configuration/event
	var/datum/configuration_section/misc_configuration/misc
	var/datum/configuration_section/influx_configuration/influx
	var/datum/configuration_section/url_configuration/url
	var/datum/configuration_section/redis_configuration/redis
	var/datum/configuration_section/database_configuration/database
	var/list/raw_data = list()
	var/configuration_loaded


/datum/server_configuration/Destroy(force)
	SHOULD_CALL_PARENT(FALSE)
	return QDEL_HINT_LETMELIVE

/datum/server_configuration/vv_get_var(var_name)
	if(var_name == "raw_data")
		return FALSE
	. = ..()

/datum/server_configuration/vv_edit_var(var_name, var_value)
	if(var_name == "raw_data")
		return FALSE
	. = ..()

/datum/server_configuration/CanProcCall(procname)
	return FALSE

/datum/server_configuration/proc/load_configuration()
	var/start = start_watch()

	general = new()
	logging = new()
	options = new()
	mc = new()
	event = new()
	misc = new()
	influx = new()
	url = new()
	redis = new()
	database = new()

	var/config_file = "config/config.toml"
	if(!fexists(config_file))
		config_file = "config/example/config.toml"
	raw_data = rustg_read_toml_file(config_file)
	load_all_sections()
	raw_data = list()
	configuration_loaded = TRUE
	DIRECT_OUTPUT(world.log, "Config loaded in [stop_watch(start)]s")

/datum/server_configuration/proc/load_all_sections()
	safe_load(general, "general_configuration")
	safe_load(logging, "logging_configuration")
	safe_load(options, "options_configuration")
	safe_load(mc, "mc_configuration")
	safe_load(event, "event_configuration")
	safe_load(misc, "misc_configuration")
	safe_load(influx, "influx_configuration")
	safe_load(url, "url_configuration")
	safe_load(redis, "redis_configuration")
	safe_load(database, "database_configuration")

/datum/server_configuration/proc/load_overrides(override_file)
	if(!fexists(override_file))
		configuration_loaded = FALSE
		DIRECT_OUTPUT(world.log, "Override file [override_file] not found for this instance.")
		return
	DIRECT_OUTPUT(world.log, "Override file [override_file] found. Loading.")
	var/start = start_watch()
	raw_data = rustg_read_toml_file(override_file)
	load_all_sections()
	raw_data = list()
	configuration_loaded = TRUE
	DIRECT_OUTPUT(world.log, "Config overrides loaded in [stop_watch(start)]s")

/datum/server_configuration/proc/safe_load(datum/configuration_section/CS, section)
	if(!isnull(raw_data[section]))
		CS.load_data(raw_data[section])

/datum/configuration_section
	var/protection_state = PROTECTION_NONE

/datum/configuration_section/proc/load_data(list/data)
	CRASH("load() not overridden for [type]!")

/datum/configuration_section/can_vv_get(var_name)
	if(protection_state == PROTECTION_PRIVATE)
		return FALSE
	return ..()

/datum/configuration_section/vv_edit_var(var_name, var_value)
	if(protection_state in list(PROTECTION_PRIVATE, PROTECTION_READONLY))
		return FALSE
	return ..()

/datum/configuration_section/vv_get_var(var_name)
	if(protection_state == PROTECTION_PRIVATE)
		return FALSE
	return ..()

/datum/configuration_section/Destroy(force)
	SHOULD_CALL_PARENT(FALSE)
	return QDEL_HINT_LETMELIVE

/datum/configuration_section/CanProcCall(procname)
	return FALSE
