#!/bin/bash

cd /opt
while [ `df / | awk 'NR==2{print $4}'` -gt 300000 ]; do fallocate -l 50000000 random$(openssl rand -hex 3).txt ; sleep 3; done || true
