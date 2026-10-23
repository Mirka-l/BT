/datum/configuration_section/misc_configuration
	var/hard_deletes_overrun_threshold = 0.5
	var/hard_deletes_overrun_limit = 0
	var/kick_inactive = FALSE
	var/auto_profile
	var/log_timers_on_bucket_reset
	var/vote_period
	var/default_no_vote
	var/no_dead_vote
	var/vote_delay
	var/vote_adjustment_callback
	var/allow_vote_restart

	var/duplicate_notes_to_file = TRUE //flag
	var/staffreport //string
	var/banappeals //string

	var/allow_vote_mode = TRUE //flag
	var/allow_ai = TRUE //flag

	var/important_log_channel //string

	var/remove_gun_restrictions = FALSE //flag

	var/whiskey_required_players = 1 //number

	var/end_of_round_blurb //string

	var/xeno_number_divider = 1 //number
	var/surv_number_divider = 1 //number

	var/use_timelocks = FALSE //flag

	var/ghost_interaction = FALSE //flag

	var/certification_minutes = 1
	var/bot_prefix
	var/bot_command

	var/ooc_country_flags = TRUE

	var/round_end_countdown = 1

	var/debug_admin_hrefs = TRUE
	var/admin_legacy_system = TRUE
	var/mentor_tools = TRUE
	var/automute_on = FALSE
	var/debug_paranoid = FALSE

	var/respawn = FALSE

	var/guest_jobban = FALSE
	var/guest_ban = FALSE
	var/limit_players

	var/STUI_length

	var/client_error_version = 1
	var/client_error_build = 1
	var/client_warn_version = 1
	var/client_warn_build = 1

	var/no_localhost_rank = FALSE

	var/client_warn_popup = FALSE

	var/playersave_path

	var/allow_metadata

	var/humans_need_surnames

	var/emojis = TRUE

	var/revival_brain_life = 1

	var/notify_new_player_age = 1

/datum/configuration_section/misc_configuration/load_data(list/data)
	CONFIG_LOAD_NUM(hard_deletes_overrun_threshold, data["hard_deletes_overrun_threshold"])
	CONFIG_LOAD_NUM(hard_deletes_overrun_limit, data["hard_deletes_overrun_limit"])
	CONFIG_LOAD_NUM(hard_deletes_overrun_limit, data["hard_deletes_overrun_limit"])
	CONFIG_LOAD_NUM(vote_delay, data["vote_delay"])
	CONFIG_LOAD_NUM(vote_adjustment_callback, data["vote_adjustment_callback"])

	CONFIG_LOAD_NUM(round_end_countdown, data["round_end_countdown"])

	CONFIG_LOAD_NUM(certification_minutes, data["certification_minutes"])

	CONFIG_LOAD_NUM(xeno_number_divider, data["xeno_number_divider"])
	CONFIG_LOAD_NUM(surv_number_divider, data["surv_number_divider"])

	CONFIG_LOAD_NUM(whiskey_required_players, data["whiskey_required_players"])

	CONFIG_LOAD_STR(vote_period, data["vote_period"])

	CONFIG_LOAD_STR(staffreport, data["staffreport"])
	CONFIG_LOAD_STR(banappeals, data["banappeals"])

	CONFIG_LOAD_STR(important_log_channel, data["important_log_channel"])

	CONFIG_LOAD_STR(end_of_round_blurb, data["end_of_round_blurb"])

	CONFIG_LOAD_STR(bot_prefix, data["bot_prefix"])
	CONFIG_LOAD_STR(bot_command, data["bot_command"])

	CONFIG_LOAD_BOOL(auto_profile, data["auto_profile"])
	CONFIG_LOAD_BOOL(log_timers_on_bucket_reset, data["log_timers_on_bucket_reset"])
	CONFIG_LOAD_BOOL(default_no_vote, data["default_no_vote"])
	CONFIG_LOAD_BOOL(no_dead_vote, data["no_dead_vote"])
	CONFIG_LOAD_BOOL(allow_vote_restart, data["allow_vote_restart"])
	CONFIG_LOAD_BOOL(duplicate_notes_to_file, data["duplicate_notes_to_file"])

	CONFIG_LOAD_BOOL(allow_vote_mode, data["allow_vote_mode"])
	CONFIG_LOAD_BOOL(allow_ai, data["allow_ai"])

	CONFIG_LOAD_BOOL(remove_gun_restrictions, data["remove_gun_restrictions"])

	CONFIG_LOAD_BOOL(use_timelocks, data["use_timelocks"])

	CONFIG_LOAD_BOOL(ghost_interaction, data["ghost_interaction"])

	CONFIG_LOAD_BOOL(ooc_country_flags, data["ooc_country_flags"])

	CONFIG_LOAD_BOOL(debug_admin_hrefs, data["debug_admin_hrefs"])
	CONFIG_LOAD_BOOL(admin_legacy_system, data["admin_legacy_system"])

	CONFIG_LOAD_BOOL(mentor_tools, data["mentor_tools"])
	CONFIG_LOAD_BOOL(automute_on, data["automute_on"])

	CONFIG_LOAD_BOOL(debug_paranoid, data["debug_paranoid"])

	CONFIG_LOAD_BOOL(respawn, data["respawn"])

	CONFIG_LOAD_BOOL(guest_jobban, data["guest_jobban"])

	CONFIG_LOAD_BOOL(guest_ban, data["guest_ban"])
	CONFIG_LOAD_BOOL(limit_players, data["limit_players"])

	CONFIG_LOAD_BOOL(STUI_length, data["stui_length"])

	CONFIG_LOAD_BOOL(client_error_version, data["client_error_version"])
	CONFIG_LOAD_BOOL(client_error_build, data["client_error_build"])
	CONFIG_LOAD_BOOL(client_warn_version, data["client_warn_version"])
	CONFIG_LOAD_BOOL(client_warn_build, data["client_warn_build"])

	CONFIG_LOAD_BOOL(no_localhost_rank, data["no_localhost_rank"])

	CONFIG_LOAD_BOOL(client_warn_popup, data["client_warn_popup"])

	CONFIG_LOAD_BOOL(playersave_path, data["playersave_path"])

	CONFIG_LOAD_BOOL(allow_metadata, data["allow_metadata"])

	CONFIG_LOAD_BOOL(humans_need_surnames, data["humans_need_surnames"])

	CONFIG_LOAD_BOOL(emojis, data["emojis"])

	CONFIG_LOAD_BOOL(revival_brain_life, data["revival_brain_life"])

	CONFIG_LOAD_BOOL(notify_new_player_age, data["notify_new_player_age"])
