#!/bin/bash

sed -i 's|#mail_location =|mail_location = maildir:~/Maildir|g' /etc/dovecot/conf.d/10-mail.conf

sed -i 's|#disable_plaintext_auth = yes|disable_plaintext_auth = no|g' /etc/dovecot/conf.d/10-auth.conf

systemctl restart dovecot

echo "Dovecot configured."
