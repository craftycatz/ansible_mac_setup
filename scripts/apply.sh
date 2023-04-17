#!/bin/sh
ansible-playbook -i "localhost," -c local setup_main.yml --ask-become-pass