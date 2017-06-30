#!/usr/bin/env bash

rm maor.tar.gz
gtar -cvzf maor.tar.gz *
scp maor.tar.gz 192.34.60.247:/home/btrager/

ssh 192.34.60.247 "rm -rf /opt/maor/*
tar xzf ~/maor.tar.gz -C /opt/maor/
rm ~/maor.tar.gz"