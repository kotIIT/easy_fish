#!/usr/bin/env fish


#install tweaks for Oh my fish.
#install grc and bira

sudo apt install grc
omf install bira
omf theme bira
omf install grc
set -U grcplugin_ls --color 
