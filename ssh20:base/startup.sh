#! /bin/bash
# startup.sh nss-pam-ldap

bash /opt/docker/install.sh
/sbin/nscd
/sbin/nslcd
/bin/bash
