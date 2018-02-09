$hight = {
	'john' => 20,
}

notice ("john hight is ${hight['john']})

$attribtes = {
	'owner' => 'mkarya',
	'mode' => '0644'
}

file { '/tmp/file':
	ensure => present,
	* = > $attributes
}

