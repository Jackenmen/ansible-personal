#!/usr/bin/env bash
# Install git.
sudo apt install -y git

# Clone the repository to a dedicated location in home directory.
git clone https://github.com/jack1142/ansible-personal ~/ansible-personal
chmod o-w ~/ansible-personal
cd ~/ansible-personal

# Install Ansible and provision the desktop playbook.
exec bash ./install_and_provision.sh
