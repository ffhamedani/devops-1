# Add  Network Adapter
on vm > add network adaptor
# change ip
vim /etc/netplan/00-installer-config.yaml 
# Install iptables
root@s1:~# apt install iptables

apt install iptables-persistent
# ip forwarding:
1- vim /etc/sysctl.conf 
### To enable the changes made in sysctl.conf we need to run the command:
2- sysctl -p /etc/sysctl.conf
Or

Restart the networking service

service network restart

# set on of the  Network Adapter on NAT

# # iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

# Save the iptables rules:

service iptables save


## Connect the Clients
on clients Add this line after Addresses:
gateway4: 192.168.34.1