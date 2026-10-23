/datum/configuration_section/url_configuration
	var/new_round_alert_role_id
	var/new_round_alert_channel

	var/wikiurl
	var/wiki_article_url
	var/wikiurl_home_page

	var/topic_tokens
	var/topic_max_size
	var/log_world_topic
	var/minute_topic_limit
	var/second_topic_limit

	var/github_url
	var/github_app_api
	var/org
	var/repo_name

	var/invoke_youtube_dl
	var/cobalt_base_api
	var/cobalt_api_key

	var/round_results_webhook_url

	var/server

	var/discordurl
	var/adminhelp_ahelp_link
	var/urgent_ahelp_message
	var/regular_adminhelp_webhook_url
	var/urgent_adminhelp_webhook_url
	var/urgent_ahelp_cooldown
	var/urgent_ahelp_user_prompt
	var/ahelp_message
	var/adminhelp_webhook_name
	var/adminhelp_webhook_pfp
	var/popup_admin_pm = TRUE

	var/player_report

	var/ban_appeals

	var/asset_cdn_url

	var/external_rsc_urls
	var/webmap_host

	var/connection_relay_ping
	var/connection_relay_con

/datum/configuration_section/url_configuration/load_data(list/data)
	CONFIG_LOAD_STR(new_round_alert_role_id, data["new_round_alert_role_id"])
	CONFIG_LOAD_STR(new_round_alert_channel, data["new_round_alert_channel"])

	CONFIG_LOAD_STR(wikiurl, data["wikiurl"])
	CONFIG_LOAD_STR(wiki_article_url, data["wiki_article_url"])
	CONFIG_LOAD_STR(wikiurl_home_page, data["wikiurl_home_page"])

	CONFIG_LOAD_STR(topic_tokens, data["topic_toke_url"])
	CONFIG_LOAD_STR(topic_max_size, data["topic_max_size"])
	CONFIG_LOAD_STR(log_world_topic, data["log_world_topic"])

	CONFIG_LOAD_STR(github_app_api, data["github_app_api"])
	CONFIG_LOAD_STR(org, data["org"])
	CONFIG_LOAD_STR(repo_name, data["repo_name"])

	CONFIG_LOAD_STR(invoke_youtube_dl, data["invoke_youtube_dl"])
	CONFIG_LOAD_STR(cobalt_base_api, data["cobalt_base_api"])
	CONFIG_LOAD_STR(cobalt_api_key, data["cobalt_api_key"])

	CONFIG_LOAD_STR(round_results_webhook_url, data["round_results_webhook_url"])

	CONFIG_LOAD_STR(server, data["server"])

	CONFIG_LOAD_STR(discordurl, data["discordurl"])

	CONFIG_LOAD_STR(adminhelp_ahelp_link, data["adminhelp_ahelp_link"])
	CONFIG_LOAD_STR(urgent_ahelp_message, data["urgent_ahelp_message"])
	CONFIG_LOAD_STR(regular_adminhelp_webhook_url, data["regular_adminhelp_webhook_url"])
	CONFIG_LOAD_STR(urgent_adminhelp_webhook_url, data["urgent_adminhelp_webhook_url"])
	CONFIG_LOAD_STR(urgent_ahelp_cooldown, data["urgent_ahelp_cooldown"])
	CONFIG_LOAD_STR(urgent_ahelp_user_prompt, data["urgent_ahelp_user_prompt"])
	CONFIG_LOAD_STR(ahelp_message, data["ahelp_message"])
	CONFIG_LOAD_STR(adminhelp_webhook_name, data["adminhelp_webhook_name"])
	CONFIG_LOAD_STR(adminhelp_webhook_pfp, data["adminhelp_webhook_pfp"])
	CONFIG_LOAD_STR(popup_admin_pm, data["popup_admin_pm"])

	CONFIG_LOAD_STR(player_report, data["player_report"])

	CONFIG_LOAD_STR(ban_appeals, data["ban_appeals"])

	CONFIG_LOAD_STR(asset_cdn_url, data["asset_cdn_url"])

	CONFIG_LOAD_STR(minute_topic_limit, data["minute_topic_limit"])
	CONFIG_LOAD_STR(second_topic_limit, data["second_topic_limit"])

	CONFIG_LOAD_STR(external_rsc_urls, data["external_rsc_urls"])

	CONFIG_LOAD_STR(webmap_host, data["webmap_host"])

	CONFIG_LOAD_STR(connection_relay_ping, data["connection_relay_ping"])
	CONFIG_LOAD_STR(connection_relay_con, data["connection_relay_con"])
