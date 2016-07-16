#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

# first things first
sudo apt-get install subversion git

# insatll node
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# for node-gylp
sudo apt-get install build-essential

# for ls and cat
sudo apt-get install pygmentize

# fish
sudo apt-get install fish

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
sudo apt-get install grc

# install thefuck
sudo apt install python3-dev python3-pip
sudo -H pip3 install thefuck
