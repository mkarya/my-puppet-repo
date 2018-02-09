cron { 'run-puppet':
	command : 'git clone <path> && /opt/puppetlabs/bin/puppet apply /home/mkarya/learning'
	hour => "*"
	minute => "*/15"
	environment => ['MAILTO=mukesh@attocom.com']
	user => "mkarya"
	
}

cron 
