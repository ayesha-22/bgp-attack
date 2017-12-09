#!/bin/bash

sudo python run.py --node R9 --cmd "pgrep -f [z]ebra-R9 | xargs kill -9"
sudo python run.py --node R9 --cmd "pgrep -f [b]gpd-R9 | xargs kill -9"
