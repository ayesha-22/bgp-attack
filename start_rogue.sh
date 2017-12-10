#!/bin/bash

echo "Killing any existing rogue AS"
./stop_rogue.sh

echo "Starting rogue AS"
sudo python run.py --node R9 --cmd "/usr/lib/quagga/zebra -f conf/zebra-R9.conf -d -i /tmp/zebra-R9.pid > logs/R9-zebra-stdout"
sudo python run.py --node R9 --cmd "/usr/lib/quagga/bgpd -f conf/bgpd-R9.conf -d -i /tmp/bgpd-R9.pid > logs/R9-bgpd-stdout"
