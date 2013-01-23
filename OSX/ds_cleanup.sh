#!/bin/bash
# Proper header for a Bash script.

# ds_cleanup.sh, version 1
#

sudo find / -name ".DS_Store" -depth -exec rm {} \;