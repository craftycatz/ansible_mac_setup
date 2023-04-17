#! /bin/bash

xcode-select --install
sudo xcodebuild -license
softwareupdate --install-rosetta
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
sudo pip3 install --ignore-installed ansible
ansible-galaxy install -r requirements.yml

ansible-playbook -i "localhost," -c local setup_main.yml --ask-become-pass