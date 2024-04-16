# Install and Configure ipset on linux

## Install
apt-get update

apt install ipset

### IF:
E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13: Permission denied)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), are you root?
### Then:
rm /var/lib/dpkg/lock-frontend


# create List
ipset create test-list1  hash:mac
 # check list
ipset list

Name: list1
Type: hash:mac
Revision: 1
Header: hashsize 1024 maxelem 65536 bucketsize 12 initval 0xc9c8cb7b
Size in memory: 200
References: 0
Number of entries: 0
Members:

Name: list-ip
Type: hash:ip
Revision: 5
Header: family inet hashsize 1024 maxelem 65536 bucketsize 12 initval 0x77e5bdc1
Size in memory: 200
References: 0
Number of entries: 0
Members:

# Add IP (hash:ip)
ipset add list-ip 192.162.242.129

root@s1:~# ipset add list1 192.168.33.150
ipset v7.15: Syntax error: cannot parse '192.168.33.150' as ethernet address

# Add IP (Hash: net)
ipset create newset hash:net

ipset add newset 12.23.34.45/16
