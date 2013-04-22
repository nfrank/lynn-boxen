# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "1.2.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",    "1.1.0"
github "nodejs",   "1.0.0"
github "nvm",      "1.0.0"
github "ruby",     "3.1.0"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"
github "sysctl",   "1.0.0"
github "xquartz",  "1.0.0"
github "java",		 "1.0.0"

# my own shit
mod "dropbox",      :git => "git://github.com/boxen/puppet-dropbox.git"
mod "tmux",         :git => "git://github.com/boxen/puppet-tmux.git"
mod "alfred",       :git => "git://github.com/boxen/puppet-alfred.git"
mod "virtualbox",   :git => "git://github.com/boxen/puppet-virtualbox.git"
mod "vagrant",      :git => "git://github.com/boxen/puppet-vagrant.git"
mod "iterm2",       :git => "git://github.com/boxen/puppet-iterm2.git"
mod "heroku",       :git => "git://github.com/boxen/puppet-heroku.git"
mod "pow",          :git => "git://github.com/boxen/puppet-pow.git"
mod "imagemagick",  :git => "git://github.com/boxen/puppet-imagemagick.git"
mod "skype",        :git => "git://github.com/boxen/puppet-skype.git"
mod "googledrive",  :git => "git://github.com/boxen/puppet-googledrive.git"
mod "ctags",        :git => "git://github.com/boxen/puppet-ctags.git"
mod "chrome",       :git => "git://github.com/boxen/puppet-chrome.git"
mod "transmission", :git => "git://github.com/boxen/puppet-transmission.git"
mod "clojure",      :git => "git://github.com/boxen/puppet-clojure.git"
mod "zsh",          :git => "git://github.com/boxen/puppet-zsh.git"
mod "wget",         :git => "git://github.com/boxen/puppet-wget.git"
mod "vlc",          :git => "git://github.com/boxen/puppet-vlc.git"
mod "redis",        :git => "git://github.com/boxen/puppet-redis.git"
mod "mongodb",      :git => "git://github.com/boxen/puppet-mongodb.git"
mod "propane",      :git => "git://github.com/boxen/puppet-propane.git"
mod "osx",          :git => "git://github.com/boxen/puppet-osx.git"
mod "onepassword",  :git => "git://github.com/boxen/puppet-onepassword.git"
mod "macvim",       :git => "git://github.com/boxen/puppet-macvim.git"
mod "python",       :git => "https://github.com/boxen/puppet-python.git"
mod "postgresapp",  :git => "https://github.com/boxen/puppet-postgresapp.git"
mod "phantomjs",    :git => "https://github.com/boxen/puppet-phantomjs.git"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
