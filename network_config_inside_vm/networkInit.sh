####################### read hardware address ######################
ipAddr=$(ifconfig | grep Ether | awk '{ print $5 }')

IP1=$(echo $ipAddr | cut -c 10-13)
IP2=$(echo $ipAddr | cut -c 15-17)

vmIp1=$(echo $(echo ${IP1}) | sed "s/[A:]/${replace}/g")
vmIp2=$(echo $(echo ${IP2}) | sed "s/[A:]/${replace}/g")

####################### machine ip address ########################
vmIP=$(echo "172.17.$vmIp1.$vmIp2")

tapIp2=$(($vmIp2 - 1)) 
####################### tap interface ip address ##################
tapIp=$(echo "172.17.$vmIp1.$tapIp2")

###################### configure network ##########################
ip addr add $vmIP/30 dev eth0
ip route add default via $tapIp dev eth0
ifconfig eth0 up
echo "nameserver 8.8.8.8" > /etc/resolv.conf

