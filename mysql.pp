package { 'mysql-server':
	ensure => installed
}

service {'mysql':
	ensure => running,
	enable => true
        restart => 'systemctl restart mysql',
	require => [ File: '/etc/mysql/my.cnf', Package : mysql-server]
}

file { '/etc/mysql/my.cnf':
	ensure => present,
	notify => Service['mysql']
}
