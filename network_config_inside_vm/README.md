# add networkInit.sh script to init script inside firecracker

# steps to add networkInit.sh to init script inside vm
## assign hardware address to vm using /network-interfaces api
## copy file networkInit.sh to /etc/init.d/networkInit in vm
## add it to default level startup script using: rc-update add networkInit default

### on startup networkInit.sh script will run, it will read hardware address and asssign ip address to itself
### makesure you have confiured vm with same tap interface ip.
