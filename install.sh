#!/bin/bash

echo "Installing packages..."

dnf install -y postfix dovecot mailx git

echo "Enabling services..."

systemctl enable postfix
systemctl enable dovecot

systemctl start postfix
systemctl start dovecot

echo "Done."
