#!/bin/bash

echo "Killing any existing rogue AS"
./stop_rogue.sh

echo "Starting rogue AS"
sudo python run.py --node R3 --cmd "/usr/lib/quagga/zebra -f conf/zebra-R3.conf -d -i /tmp/zebra-R3.pid > logs/R3-zebra-stdout"
sudo python run.py --node R3 --cmd "/usr/lib/quagga/bgpd -f conf/bgpd-R3.conf -d -i /tmp/bgpd-R3.pid > logs/R3-bgpd-stdout"
