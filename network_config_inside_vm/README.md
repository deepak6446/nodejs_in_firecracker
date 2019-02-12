# Network configuration inside vm

# steps to add networkInit.sh to init script inside vm
1. assign hardware address to vm using /network-interfaces api
2. copy file networkInit.sh to /etc/init.d/networkInit in vm
3. add it to default level startup script using: rc-update add networkInit default

# how does it work ?
on startup networkInit.sh script will run, it will read hardware address and asssign ip address to itself
* makesure you have confiured vm with same tap interface ip.
