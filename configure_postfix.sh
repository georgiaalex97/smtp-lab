#!/bin/bash

postconf -e "myhostname=rhel1.lab.local"
postconf -e "mydomain=lab.local"
postconf -e "myorigin=\$mydomain"
postconf -e "inet_interfaces=all"
postconf -e "mynetworks=127.0.0.0/8,192.168.0.0/24"
postconf -e "home_mailbox=Maildir/"
postconf -e "mydestination=\$myhostname, localhost.\$mydomain, localhost, \$mydomain"

systemctl restart postfix

echo "Postfix configured."
