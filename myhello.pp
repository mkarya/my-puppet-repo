exec { 'run-first':
	command => "cwd /home/mkarya"
}
file { '/home/mkarya/test' :
	ensure => present,
	content => "add more replace the content to home/mkarya/test2",
	mode => '0644',
}
