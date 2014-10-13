#!/bin/bash
# How to install custom vagrant plugin from github
# http://stackoverflow.com/questions/17028132/vagrant-install-plugin-from-github
# https://github.com/mitchellh/vagrant/issues/1829
# $ bundle install
# $ rake build
# $ vagrant plugin install ./pkg/vagrant-nixos-V.V.V.gem
cd "$(dirname "$0")"
vagrant plugin install ../../vagrant-nixos/pkg/vagrant-nixos-0.0.6.gem
