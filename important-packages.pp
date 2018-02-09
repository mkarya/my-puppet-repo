$vi_install = true
$python_pip_install = false
$package_git = true

if $vi_install {
	package { 'vim':
		ensure => installed
	}

	package { 'vim-gnome':
		ensure => installed
	}
}

if $python_pip_install {
	package { 'python-pip':
		ensure => installed
	}
} else {
	exec { 'check-python':
		command => '/opt/puppetlabs/bin/puppet resource package python-pip'
	}
}

service { 'puppet':
	ensure => running
}

if $package_git {
	package { 'git':
		ensure => installed
	}
}
