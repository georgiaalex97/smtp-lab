#!/bin/bash

if id alert >/dev/null 2>&1; then
    echo "User already exists"
else
    useradd alert
fi

echo "Set password for alert user"

passwd alert

su - alert -c 'mkdir -p ~/Maildir/{cur,new,tmp}'

echo "Maildir created."
