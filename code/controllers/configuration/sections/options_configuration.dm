/datum/configuration_section/options_configuration
	protection_state = PROTECTION_READONLY
	var/explosive_antigrief = ANTIGRIEF_DISABLED
	var/sleep_offline = TRUE
	var/asset_transport
	var/asset_cdn_webroot
	var/defaultmaps
	var/auto_ooc_mute
	var/remove_gun_restrictions = FALSE //flag
	var/whiskey_required_players = 1 //number
	var/xeno_number_divider = 1 //number
	var/surv_number_divider = 1 //number
	var/respawn = FALSE

	var/guest_jobban = FALSE
	var/guest_ban = FALSE
	var/limit_players = 1

	var/revival_brain_life = 1
	var/notify_new_player_age = 1

/datum/configuration_section/options_configuration/load_data(list/data)
	CONFIG_LOAD_BOOL(explosive_antigrief, data["explosive_antigrief"])
	CONFIG_LOAD_BOOL(sleep_offline, data["sleep_offline"])
	CONFIG_LOAD_STR(asset_transport, data["asset_transport"])
	CONFIG_LOAD_STR(asset_cdn_webroot, data["asset_cdn_webroot"])
	CONFIG_LOAD_STR(defaultmaps, data["defaultmaps"])
	CONFIG_LOAD_BOOL(auto_ooc_mute, data["auto_ooc_mute"])
	CONFIG_LOAD_BOOL(remove_gun_restrictions, data["remove_gun_restrictions"])
	CONFIG_LOAD_NUM(whiskey_required_players, data["whiskey_required_players"])
	CONFIG_LOAD_NUM(xeno_number_divider, data["xeno_number_divider"])
	CONFIG_LOAD_NUM(surv_number_divider, data["surv_number_divider"])
	CONFIG_LOAD_BOOL(respawn, data["respawn"])

	CONFIG_LOAD_BOOL(guest_jobban, data["guest_jobban"])
	CONFIG_LOAD_BOOL(guest_ban, data["guest_ban"])
	CONFIG_LOAD_NUM(limit_players, data["limit_players"])

	CONFIG_LOAD_NUM(revival_brain_life, data["revival_brain_life"])
	CONFIG_LOAD_NUM(notify_new_player_age, data["notify_new_player_age"])
