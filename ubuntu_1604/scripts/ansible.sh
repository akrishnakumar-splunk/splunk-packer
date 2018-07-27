#!/bin/bash -eux

# Install Ansible repository.
apt -y update
apt-add-repository ppa:ansible/ansible

# Install Ansible.
apt -y update
apt -y install ansible