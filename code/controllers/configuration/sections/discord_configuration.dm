/datum/configuration_section/discord_configuration
	protection_state = PROTECTION_PRIVATE
	var/discord_url
	var/adminhelp_ahelp_link
	var/urgent_ahelp_message
	var/regular_adminhelp_webhook_url
	var/urgent_adminhelp_webhook_url
	var/urgent_ahelp_cooldown = 1
	var/urgent_ahelp_user_prompt
	var/ahelp_message
	var/adminhelp_webhook_name
	var/adminhelp_webhook_pfp
	var/popup_admin_pm = TRUE

	var/certification_minutes = 1
	var/bot_prefix
	var/bot_command

/datum/configuration_section/discord_configuration/load_data(list/data)
	CONFIG_LOAD_STR(discord_url, data["discord_url"])
	CONFIG_LOAD_STR(adminhelp_ahelp_link, data["adminhelp_ahelp_link"])
	CONFIG_LOAD_STR(urgent_ahelp_message, data["urgent_ahelp_message"])
	CONFIG_LOAD_STR(regular_adminhelp_webhook_url, data["regular_adminhelp_webhook_url"])
	CONFIG_LOAD_STR(urgent_adminhelp_webhook_url, data["urgent_adminhelp_webhook_url"])
	CONFIG_LOAD_NUM(urgent_ahelp_cooldown, data["urgent_ahelp_cooldown"])
	CONFIG_LOAD_STR(urgent_ahelp_user_prompt, data["urgent_ahelp_user_prompt"])
	CONFIG_LOAD_STR(ahelp_message, data["ahelp_message"])
	CONFIG_LOAD_STR(adminhelp_webhook_name, data["adminhelp_webhook_name"])
	CONFIG_LOAD_STR(adminhelp_webhook_pfp, data["adminhelp_webhook_pfp"])
	CONFIG_LOAD_BOOL(popup_admin_pm, data["popup_admin_pm"])

	CONFIG_LOAD_NUM(certification_minutes, data["certification_minutes"])
	CONFIG_LOAD_STR(bot_prefix, data["bot_prefix"])
	CONFIG_LOAD_STR(bot_command, data["bot_command"])
