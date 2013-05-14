require boxen::environment
require homebrew
require gcc

Exec {
	group				=> 'staff',
	logoutput		=> on_failure,
	user				=> $luser,

	path => [
		"${boxen::config::home}/rbenv/shims",
		"${boxen::config::home}/rbenv/bin",
		"${boxen::config::home}/rbenv/plugins/ruby-build/bin",
		"${boxen::config::home}/homebrew/bin",
		'/usr/bin',
		'/bin',
		'/usr/sbin',
		'/sbin'
	],

	environment => [
		"HOMEBREW_CACHE=${homebrew::config::cachedir}",
		"HOME=/Users/${::luser}"
	]
}

File {
	group => 'staff',
	owner => $luser
}

Package {
	provider => homebrew,
	require  => Class['homebrew']
}

Repository {
	provider => git,
	extra		 => [
		'--recurse-submodules'
	],
	require  => Class['git']
}

Service {
	provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
	# core modules, needed for most things
	include dnsmasq
	include git
	include hub
	include nginx
	include nvm
	include sysctl::ipforwarding
	include xquartz
	include python
	include java
	include ruby
	include firefox::nightly
	include clojure

	# my own shit
	include dropbox
	include alfred
	include virtualbox
	include vagrant
	include iterm2::stable
	include postgresapp
	include heroku
	include pow
	include imagemagick
	include skype
	include googledrive
	include ctags
	include chrome
	include chrome::canary
	include transmission
	include zsh
	include wget
	include vlc
	include redis
	include mongodb
	include propane
	include onepassword
	include macvim
	include phantomjs

	# fail if FDE is not enabled
	#if $::root_encrypted == 'no' {
		#fail('Please enable full disk encryption and try again')
	#}

	# node versions
	include nodejs::0-4
	include nodejs::0-6
	include nodejs::0-8

	# default ruby versions
	include ruby::1_8_7
	include ruby::1_9_2
	include ruby::1_9_3
	include ruby::2_0_0

	require ruby::1_8_7
	require ruby::1_9_2
	require ruby::1_9_3
	require ruby::2_0_0

	#ruby::version {'1.9.3-p194': }

	# heroku
	heroku::plugin { 'accounts':
		source => 'ddollar/heroku-accounts'
	}

	heroku::plugin { 'remote':
		source => 'tpope/heroku-remote'
	}

	heroku::plugin { 'binstubs':
		source => 'tpope/heroku-binstubs'
	}

	heroku::plugin { 'wildcard':
		source => 'tpope/heroku-surrogate'
	}

	# rbenv

	class { 'ruby::global':
		version => '1.9.3'
	}

	ruby::version { '1.9.3': }
	ruby::version { '2.0.0': }

	ruby::gem { "pry for ${version}":
		gem     => 'pry',
		ruby    => $version
	}

	ruby::gem { "interactive_editor for ${version}":
		gem     => 'interactive_editor',
		ruby    => $version
	}

	ruby::gem { "wirble for ${version}":
		gem     => 'wirble',
		ruby    => $version
	}

	ruby::gem { "tunnels for ${version}":
		gem     => 'tunnels',
		ruby    => $version
	}

	ruby::gem { "powder for ${version}":
		gem     => 'powder',
		ruby    => $version
	}

	ruby::gem { "lunchy for ${version}":
		gem     => 'lunchy',
		ruby    => $version
	}

	ruby::gem { "redcarpet for ${version}":
		gem     => 'redcarpet',
		ruby    => $version
	}

	ruby::gem { "CoffeeTags for ${version}":
		gem     => 'CoffeeTags',
		ruby    => $version
	}

	ruby::gem { "zeus for ${version}":
		gem     => 'zeus',
		ruby    => $version
	}

	ruby::gem { "pygments.rb for ${version}":
		gem     => 'pygments.rb',
		ruby    => $version
	}

	ruby::plugin { 'rbenv-vars':
		version => 'HEAD',
		source  => 'sstephenson/rbenv-vars'
	}

	ruby::plugin { 'rbenv-whatis':
		version => 'HEAD',
		source  => 'rkh/rbenv-whatis'
	}

	ruby::plugin { 'rbenv-use':
		version => 'HEAD',
		source  => 'rkh/rbenv-use'
	}

	ruby::plugin { 'rbenv-update':
		version => 'HEAD',
		source  => 'rkh/rbenv-update'
	}

	ruby::plugin { 'rbenv-gemset':
		version => 'HEAD',
		source  => 'jamis/rbenv-gemset'
	}

	ruby::plugin { 'rbenv-each':
		version => 'HEAD',
		source  => 'chriseppstein/rbenv-each'
	}

	ruby::plugin { 'rbenv-default-gems':
		version => 'HEAD',
		source  => 'sstephenson/rbenv-default-gems'
	}

	ruby::plugin { 'rbenv-sudo':
		version => 'master',
		source  => 'dcarley/rbenv-sudo'
	}

	# common, useful packages
	package {
		[
			'ack',
			'findutils',
			'gnu-tar',
			'z',
			'autossh',
			'libgit2',
			'sqlite',
			'qt',
			'the_silver_searcher'
		]:
	}

	file { "${boxen::config::srcdir}/our-boxen":
		ensure => link,
		target => $boxen::config::repodir
	}
}
