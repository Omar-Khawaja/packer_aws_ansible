#!/bin/bash

# Makes a backup of the /etc/sudoers file and comments out the tty requirement
# to run sudo

sed -i.bak -e '/Defaults.*requiretty/s/^/#/' /etc/sudoers
