/datum/configuration_section/general_configuration
	protection_state = PROTECTION_READONLY
	var/server_name = "Banda Troopers"
	var/server_tag_line = "The perfect mix of RP & action"
	var/server_features = "Medium RP"
	var/lobby_time = 240
	var/restart_timeout = 75
	var/lobby_countdown = 180
	var/hostedby

/datum/configuration_section/general_configuration/load_data(list/data)
	CONFIG_LOAD_STR(server_name, data["server_name"])
	CONFIG_LOAD_STR(server_tag_line, data["server_tag_line"])
	CONFIG_LOAD_STR(server_features, data["server_features"])
	CONFIG_LOAD_NUM(lobby_time, data["lobby_time"])
	CONFIG_LOAD_NUM(restart_timeout, data["restart_timeout"])
	CONFIG_LOAD_NUM(lobby_countdown, data["lobby_countdown"])
	CONFIG_LOAD_STR(hostedby, data["hostedby"])
