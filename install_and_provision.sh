#!/usr/bin/env bash
# Install Ansible.
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt install -y ansible

# Execute Ansible playbook through provision.sh script.
exec bash "$(dirname "$(readlink -f "$0")")/provision.sh"
