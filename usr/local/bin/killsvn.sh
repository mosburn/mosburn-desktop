#!/bin/bash
# 
# This script goes through the current directory and removes all instances of 
# .svn/ that is in place. This tool was writen with the purpose of easing 
# intergration of several subversion repositories into smaller ones and to 
# save some space in large directories, making it easier to do monthly archives
# to removable media. 
#
# Script History
# 02/29/2008 Version 1, Michael Osburn, Initial write
#

echo "I will remove the following files and directories"
find . -iname .svn* 
echo "Continue? y/n"
read -e CONTINUE

if [ $CONTINUE = "y" ]
then
    find . -iname .svn* | rm  -fr `awk '{ print $1 }'`
fi
