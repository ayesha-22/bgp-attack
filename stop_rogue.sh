#!/bin/bash

sudo python run.py --node R3 --cmd "pgrep -f [z]ebra-R3 | xargs kill -9"
sudo python run.py --node R3 --cmd "pgrep -f [b]gpd-R3 | xargs kill -9"
