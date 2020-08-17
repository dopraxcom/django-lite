#!/bin/bash
ssh-keygen -A
mkdir /run/sshd -p
env | while read line ; do echo "export "$line >> /etc/profile ; done
exec /usr/bin/supervisord -n 
