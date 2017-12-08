#!/bin/bash

node=${4:-h4-1}
bold=`tput bold`
normal=`tput sgr0`

while true; do
    out=`sudo python run.py --node $node --cmd "curl -s 8.0.1.1"`
    date=`date`
    echo $date -- $bold$out$normal
    sleep 1
done
