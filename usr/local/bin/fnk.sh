#!/bin/bash
# 
# This is a simple Find and Kill script that saves me time when tweaking 
# configuration files for processess that daemonize upon launch
# and for hunting down those pesky rogue processes
#
#
# Script History
# 02/28/2008 Version 1, Michael Osburn, Initial write
#

var=$1

# Let's make sure that the script was called with an argument
if [ -z "$var" ]
then
    echo "Example usage:"
    echo "fnk.sh conky"
    echo "This will kill all processes with 'conky' in its name"
    exit
fi

# On to the actual command
# 
# The >/dev/null 2>$1 part is used to reduce output as grep will find itself
# searching for the process, but it will be dead before the kill command
# processes

ps aux | grep $var | kill -9  `awk '{ print $2 }'` >/dev/null 2>$1
