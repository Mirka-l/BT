/datum/configuration_section/mc_configuration
	protection_state = PROTECTION_READONLY
	var/disable_high_pop_mc_mode_amount = 50
	var/high_pop_mc_mode_amount = 80
	var/high_pop_mc_tick_rate = 15
	var/base_mc_tick_rate = 20
	var/ticklag = 1
	var/hard_deletes_overrun_threshold = 0.5
	var/hard_deletes_overrun_limit = 0
	var/fps = 20
	var/auto_profile = FALSE

/datum/configuration_section/mc_configuration/load_data(list/data)
	CONFIG_LOAD_NUM(disable_high_pop_mc_mode_amount, data["disable_high_pop_mc_mode_amount"])
	CONFIG_LOAD_NUM(high_pop_mc_mode_amount, data["high_pop_mc_mode_amount"])
	CONFIG_LOAD_NUM(high_pop_mc_tick_rate, data["high_pop_mc_tick_rate"])
	CONFIG_LOAD_NUM(base_mc_tick_rate, data["base_mc_tick_rate"])
	CONFIG_LOAD_NUM(ticklag, data["ticklag"])
	CONFIG_LOAD_NUM(hard_deletes_overrun_threshold, data["hard_deletes_overrun_threshold"])
	CONFIG_LOAD_NUM(hard_deletes_overrun_limit, data["hard_deletes_overrun_limit"])
	CONFIG_LOAD_NUM(fps, data["fps"])
	CONFIG_LOAD_BOOL(auto_profile, data["auto_profile"])
