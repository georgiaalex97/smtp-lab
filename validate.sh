#!/bin/bash

echo "Checking services..."

systemctl is-active postfix
systemctl is-active dovecot

echo
echo "Checking ports..."

ss -lntp | egrep ':25|:143|:993'

echo
echo "Sending validation mail..."

echo "SMTP Test" | mail -s "SMTP Validation" alert@lab.local

