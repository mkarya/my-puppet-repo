cron { 'daily_backup':
	command : "<your shall script>"
	minute : "*/30",
	hour : fqdn_rand(24, 'run daliy backupa')
}

