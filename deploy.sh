#!/bin/bash
sudo apt-get update
echo "updated"
sudo apt-get install -y git
echo "git installed"
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
ps aux | grep puma
echo "app deployed"
