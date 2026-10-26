/datum/configuration_section/url_configuration
	protection_state = PROTECTION_PRIVATE
	var/new_round_alert_role_id
	var/new_round_alert_channel

	var/wiki_url
	var/wiki_article_url
	var/wiki_url_home_page

	var/github_url
	var/github_app_api
	var/org
	var/repo_name
	var/important_log_channel

	var/invoke_youtube_dl
	var/cobalt_base_api
	var/cobalt_api_key

	var/round_results_webhook_url
	var/server_ip

	var/player_report_url
	var/ban_appeals_url

	var/asset_cdn_url
	var/list/external_rsc_urls
	var/webmap_host

	var/list/connection_relay_ping
	var/list/connection_relay_con

/datum/configuration_section/url_configuration/load_data(list/data)
	CONFIG_LOAD_STR(new_round_alert_role_id, data["new_round_alert_role_id"])
	CONFIG_LOAD_STR(new_round_alert_channel, data["new_round_alert_channel"])

	CONFIG_LOAD_STR(wiki_url, data["wiki_url"])
	CONFIG_LOAD_STR(wiki_article_url, data["wiki_article_url"])
	CONFIG_LOAD_STR(wiki_url_home_page, data["wiki_url_home_page"])

	CONFIG_LOAD_STR(github_url, data["github_url"])
	CONFIG_LOAD_STR(github_app_api, data["github_app_api"])
	CONFIG_LOAD_STR(org, data["org"])
	CONFIG_LOAD_STR(repo_name, data["repo_name"])
	CONFIG_LOAD_STR(important_log_channel, data["important_log_channel"])

	CONFIG_LOAD_STR(invoke_youtube_dl, data["invoke_youtube_dl"])
	CONFIG_LOAD_STR(cobalt_base_api, data["cobalt_base_api"])
	CONFIG_LOAD_STR(cobalt_api_key, data["cobalt_api_key"])

	CONFIG_LOAD_STR(round_results_webhook_url, data["round_results_webhook_url"])
	CONFIG_LOAD_STR(server_ip, data["server_ip"])

	CONFIG_LOAD_STR(player_report_url, data["player_report_url"])
	CONFIG_LOAD_STR(ban_appeals_url, data["ban_appeals_url"])

	CONFIG_LOAD_STR(asset_cdn_url, data["asset_cdn_url"])
	CONFIG_LOAD_LIST(external_rsc_urls, data["external_rsc_urls"])
	CONFIG_LOAD_STR(webmap_host, data["webmap_host"])

	CONFIG_LOAD_LIST(connection_relay_ping, data["connection_relay_ping"])
	CONFIG_LOAD_LIST(connection_relay_con, data["connection_relay_con"])
