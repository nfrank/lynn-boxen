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

# my own shit
mod "dropbox",      :git => "https://github.com/boxen/puppet-dropbox.git"
mod "tmux",         :git => "https://github.com/boxen/puppet-tmux.git"
mod "alfred",       :git => "https://github.com/boxen/puppet-alfred.git"
mod "virtualbox",   :git => "https://github.com/boxen/puppet-virtualbox.git"
mod "vagrant",      :git => "https://github.com/boxen/puppet-vagrant.git"
mod "iterm2",       :git => "https://github.com/boxen/puppet-iterm2.git"
mod "heroku",       :git => "https://github.com/boxen/puppet-heroku.git"
mod "pow",          :git => "https://github.com/boxen/puppet-pow.git"
mod "imagemagick",  :git => "https://github.com/boxen/puppet-imagemagick.git"
mod "skype",        :git => "https://github.com/boxen/puppet-skype.git"
mod "googledrive",  :git => "https://github.com/boxen/puppet-googledrive.git"
mod "ctags",        :git => "https://github.com/boxen/puppet-ctags.git"
mod "chrome",       :git => "https://github.com/boxen/puppet-chrome.git"
mod "transmission", :git => "https://github.com/boxen/puppet-transmission.git"
mod "clojure",      :git => "https://github.com/boxen/puppet-clojure.git"
mod "zsh",          :git => "https://github.com/boxen/puppet-zsh.git"
mod "wget",         :git => "https://github.com/boxen/puppet-wget.git"
mod "vlc",          :git => "https://github.com/boxen/puppet-vlc.git"
mod "redis",        :git => "https://github.com/boxen/puppet-redis.git"
mod "mongodb",      :git => "https://github.com/boxen/puppet-mongodb.git"
mod "propane",      :git => "https://github.com/boxen/puppet-propane.git"
mod "osx",          :git => "https://github.com/boxen/puppet-osx.git"
mod "onepassword",  :git => "https://github.com/boxen/puppet-onepassword.git"
mod "macvim",       :git => "https://github.com/boxen/puppet-macvim.git"
mod "postgresql",   :git => "https://github.com/boxen/puppet-postgresql.git"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
