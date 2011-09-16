#!/usr/bin/env bash

wget -N --quiet https://raw.github.com/pierot/server-installer/master/lib.sh; . ./lib.sh

###############################################################################

_install_varnish() {
  _log "Install Varnish"

  sudo curl http://repo.varnish-cache.org/debian/GPG-key.txt | apt-key add -

  sudo echo "deb http://repo.varnish-cache.org/ubuntu/ lucid varnish-3.0" >> /etc/apt/sources.list

  sudo apt-get update

  _system_installs_install "varnish"
}

# configure nginx site 
#   with no server_name
#   at port 8080

# /etc/default/varnish
# /etc/varnish/default.vcl

###############################################################################