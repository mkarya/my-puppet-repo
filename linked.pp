$checkforfilefirst = false
if $checkforfilefirst {
file { '/home/mkarya/mylink':
	ensure => link,
	target => '/home/mkarya/sourcedfile',
	owner => 'mkarya'
}
}
