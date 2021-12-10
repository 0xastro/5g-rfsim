sudo sysctl net.ipv4.conf.all.forwarding=1
sudo iptables -P FORWARD ACCEPT
cd ~/5g/oai-cn5g-fed/docker-compose

sudo python3 core-network.py --type stop-basic --fqdn no --scenario 1
sudo python3 core-network.py --type start-basic --fqdn no --scenario 1
