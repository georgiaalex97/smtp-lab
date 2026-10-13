Configure SMTP Server

event config modify -mail-server <SMTP-IP>

Create destination

event notification destination create \
-name SMTPAlert \
-email alert@lab.local

Link filter

event notification create \
-filter-name test \
-destinations SMTPAlert
