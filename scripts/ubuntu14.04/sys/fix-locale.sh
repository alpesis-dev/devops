#!/bin/bash

# after `sudo locale-gen "xxx"`, LC_CTYPE=UTF-8
# it flags error when run web apps
# thus, update the `LC_CTYPE` in `/etc/default/locale`

sudo locale-gen "en_US.UTF-8"
echo "LC_CTYPE="en_US.UTF-8" > /etc/default/locale
