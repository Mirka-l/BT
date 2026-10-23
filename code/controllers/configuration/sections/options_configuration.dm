/datum/configuration_section/options_configuration
	var/explosive_antigrief = ANTIGRIEF_DISABLED
	var/sleep_offline = TRUE
	var/fps = 20
	var/asset_transport
	var/asset_cdn_webroot
	var/defaultmaps
	var/auto_ooc_mute

/datum/configuration_section/options_configuration/load_data(list/data)
	CONFIG_LOAD_BOOL(explosive_antigrief, data["explosive_antigrief"])
	CONFIG_LOAD_BOOL(sleep_offline, data["sleep_offline"])
	CONFIG_LOAD_BOOL(fps, data["fps"])
	CONFIG_LOAD_BOOL(asset_transport, data["asset_transport"])
	CONFIG_LOAD_BOOL(asset_cdn_webroot, data["asset_cdn_webroot"])
	CONFIG_LOAD_BOOL(defaultmaps, data["defaultmaps"])
	CONFIG_LOAD_BOOL(auto_ooc_mute, data["auto_ooc_mute"])
