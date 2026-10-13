#!/bin/bash

echo "Starting SMTP deployment..."

./install.sh
./configure_postfix.sh
./configure_dovecot.sh
./create_alert_user.sh
./validate.sh

echo ""
echo "SMTP deployment completed."
