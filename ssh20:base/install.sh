#! /bin/bash
# ASIX M06 Mark Santiago
# Install users
#--------------------------------------
# Add users

users="unix01 unix02 unix03"

for user in $users
do
  useradd $user && echo "OK $user" 
  # Add passwords
  echo "$user" | passwd --stdin $user &> /dev/null && echo "OK password $user"
done

cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/system-auth /etc/pam.d/system-auth
