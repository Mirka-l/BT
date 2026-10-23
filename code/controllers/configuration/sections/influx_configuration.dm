/datum/configuration_section/influx_configuration
	var/influxdb_send_period
	var/influxdb_mcstats_period
	var/influxdb_stats_period
	var/influxdb_host
	var/influxdb_token
	var/influxdb_bucket
	var/influxdb_org

/datum/configuration_section/influx_configuration/load_data(list/data)
	CONFIG_LOAD_NUM(influxdb_send_period, data["influxdb_send_period"])
	CONFIG_LOAD_NUM(influxdb_mcstats_period, data["influxdb_mcstats_period"])
	CONFIG_LOAD_NUM(influxdb_stats_period, data["influxdb_stats_period"])

	CONFIG_LOAD_STR(influxdb_host, data["influxdb_host"])
	CONFIG_LOAD_STR(influxdb_token, data["influxdb_token"])
	CONFIG_LOAD_STR(influxdb_bucket, data["influxdb_bucket"])
	CONFIG_LOAD_STR(influxdb_org, data["influxdb_org"])
