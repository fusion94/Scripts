#!/bin/bash
# ds_cleanup.sh, version 1
#

sudo find / -name ".DS_Store" -depth -exec rm {} \;