/datum/configuration_section/misc_configuration
	protection_state = PROTECTION_READONLY
	var/kick_inactive = FALSE
	var/log_timers_on_bucket_reset = FALSE
	var/duplicate_notes_to_file = TRUE
	var/use_timelocks = FALSE
	var/ghost_interaction = FALSE
	var/ooc_country_flags = TRUE
	var/debug_admin_hrefs = FALSE
	var/admin_legacy_system = FALSE
	var/automute_on = FALSE
	var/STUI_length = 300

	var/client_error_version = 1
	var/client_error_build = 1
	var/client_warn_version = 1
	var/client_warn_build = 1
	var/client_warn_popup = FALSE

	var/no_localhost_rank = FALSE
	var/playersave_path
	var/allow_metadata = TRUE
	var/humans_need_surnames = FALSE
	var/emojis = TRUE

/datum/configuration_section/misc_configuration/load_data(list/data)
	CONFIG_LOAD_BOOL(kick_inactive, data["kick_inactive"])
	CONFIG_LOAD_BOOL(log_timers_on_bucket_reset, data["log_timers_on_bucket_reset"])
	CONFIG_LOAD_BOOL(duplicate_notes_to_file, data["duplicate_notes_to_file"])
	CONFIG_LOAD_BOOL(use_timelocks, data["use_timelocks"])
	CONFIG_LOAD_BOOL(ghost_interaction, data["ghost_interaction"])
	CONFIG_LOAD_BOOL(ooc_country_flags, data["ooc_country_flags"])
	CONFIG_LOAD_BOOL(debug_admin_hrefs, data["debug_admin_hrefs"])
	CONFIG_LOAD_BOOL(admin_legacy_system, data["admin_legacy_system"])
	CONFIG_LOAD_BOOL(automute_on, data["automute_on"])
	CONFIG_LOAD_NUM(STUI_length, data["stui_length"])

	CONFIG_LOAD_NUM(client_error_version, data["client_error_version"])
	CONFIG_LOAD_NUM(client_error_build, data["client_error_build"])
	CONFIG_LOAD_NUM(client_warn_version, data["client_warn_version"])
	CONFIG_LOAD_NUM(client_warn_build, data["client_warn_build"])
	CONFIG_LOAD_BOOL(client_warn_popup, data["client_warn_popup"])

	CONFIG_LOAD_BOOL(no_localhost_rank, data["no_localhost_rank"])
	CONFIG_LOAD_STR(playersave_path, data["playersave_path"])
	CONFIG_LOAD_BOOL(allow_metadata, data["allow_metadata"])
	CONFIG_LOAD_BOOL(humans_need_surnames, data["humans_need_surnames"])
	CONFIG_LOAD_BOOL(emojis, data["emojis"])
