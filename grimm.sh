#!/bin/bash
# Author: Luke Kreft


crit() { echo "Error: $*"; exit;}
[ -e config.sh ] && source config.sh || crit "could not find config file"
(( $( id -u ) )) && crit "must be root"
[ -e /etc/debian_version ] || [ -e /etc/redhat-release ] || crit "script only supports cent and debian at this time"
