$myuserarry = ['user1', 'user2']
$mydictionary = {}

{ $myuserarry : 
	ensure => present,
	shell => '/bin/bash',
	home => '/home/user02',
	managehome => true,
}	
}

exec { 'user02-home':
	command => "/bin/mkdir /home/user02-home"
	owner => 'user02'
}
/*
user { 'user02':
	ensure => absent
}
*/
