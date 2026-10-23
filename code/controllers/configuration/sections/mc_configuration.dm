/datum/configuration_section/mc_configuration
	var/disable_high_pop_mc_mode_amount = 50
	var/high_pop_mc_mode_amount = 80
	var/high_pop_mc_tick_rate = 15
	var/base_mc_tick_rate = 20
	var/ticklag

/datum/configuration_section/mc_configuration/load_data(list/data)
	CONFIG_LOAD_BOOL(disable_high_pop_mc_mode_amount, data["disable_high_pop_mc_mode_amount"])
	CONFIG_LOAD_BOOL(high_pop_mc_mode_amount, data["high_pop_mc_mode_amount"])
	CONFIG_LOAD_BOOL(high_pop_mc_tick_rate, data["high_pop_mc_tick_rate"])
	CONFIG_LOAD_BOOL(base_mc_tick_rate, data["base_mc_tick_rate"])
	CONFIG_LOAD_BOOL(ticklag, data["ticklag"])
