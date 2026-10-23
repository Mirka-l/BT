/// Config holder for all things regarding logging
/datum/configuration_section/logging_configuration
	var/log_debug = TRUE
	var/log_asset = TRUE
	var/log_ooc = TRUE
	var/log_looc = TRUE
	var/log_access = TRUE
	var/log_say = TRUE
	var/log_telecomms = TRUE
	var/log_hivemind = TRUE
	var/log_runtime = TRUE
	var/log_prayer = TRUE
	var/log_game = TRUE
	var/log_overwatch = TRUE
	var/log_interact = TRUE
	var/log_idmod = TRUE
	var/log_vote = TRUE
	var/log_whisper = TRUE
	var/log_attack = TRUE
	var/log_emote = TRUE
	var/log_world_topic = TRUE
	var/log_manifest = TRUE
	var/log_admin = TRUE
	var/log_adminchat = TRUE
	var/log_adminwarn = TRUE
	var/log_hrefs = TRUE

/datum/configuration_section/logging_configuration/load_data(list/data)
	// Use the load wrappers here. That way the default isnt made 'null' if you comment out the config line
	CONFIG_LOAD_BOOL(log_debug, data["log_debug"])
	CONFIG_LOAD_BOOL(log_asset, data["log_asset"])
	CONFIG_LOAD_BOOL(log_ooc, data["log_ooc"])
	CONFIG_LOAD_BOOL(log_looc, data["log_looc"])
	CONFIG_LOAD_BOOL(log_access, data["log_access"])
	CONFIG_LOAD_BOOL(log_say, data["log_say"])
	CONFIG_LOAD_BOOL(log_telecomms, data["log_telecomms"])
	CONFIG_LOAD_BOOL(log_hivemind, data["log_hivemind"])
	CONFIG_LOAD_BOOL(log_runtime, data["log_runtime"])
	CONFIG_LOAD_BOOL(log_prayer, data["log_prayer"])
	CONFIG_LOAD_BOOL(log_game, data["log_game"])
	CONFIG_LOAD_BOOL(log_overwatch, data["log_overwatch"])
	CONFIG_LOAD_BOOL(log_interact, data["log_interact"])
	CONFIG_LOAD_BOOL(log_idmod, data["log_idmod"])
	CONFIG_LOAD_BOOL(log_vote, data["log_vote"])
	CONFIG_LOAD_BOOL(log_whisper, data["log_whisper"])
	CONFIG_LOAD_BOOL(log_attack, data["log_attack"])
	CONFIG_LOAD_BOOL(log_emote, data["log_emote"])
	CONFIG_LOAD_BOOL(log_world_topic, data["log_world_topic"])
	CONFIG_LOAD_BOOL(log_manifest, data["log_manifest"])
	CONFIG_LOAD_BOOL(log_admin, data["log_admin"])
	CONFIG_LOAD_BOOL(log_adminchat, data["log_adminchat"])
	CONFIG_LOAD_BOOL(log_adminwarn, data["log_adminwarn"])
	CONFIG_LOAD_BOOL(log_hrefs, data["log_hrefs"])
