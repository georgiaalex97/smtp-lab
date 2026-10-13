# SMTP Lab Deployment

Fresh Lab Build Steps

1. Run install.sh
2. Run configure_postfix.sh
3. Run configure_dovecot.sh
4. Run create_alert_user.sh
5. Run validate.sh

Thunderbird

IMAP: 993
SMTP: 25

Email: alert@lab.local


# Quick Start

dnf install -y git

git clone https://github.com/georgiaalex97/smtp-lab.git

cd smtp-lab

chmod +x *.sh

./deploy.sh
