#!/bin/bash
apt update
apt install -y gpg curl git
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata


# RVM
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh

# Ruby and Rails
rvm install ruby-3.0.3
rvm use ruby-3.0.3
gem install rails

# Dummy app to test rails setup
rails new demo
cd demo
rails test
