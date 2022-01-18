#!/usr/bin/env bash
# Change working directory to parent directory of current script.
cd "$(dirname "$(readlink -f "$0")")"

# Make sure we're using up-to-date version of the playbook.
git pull --ff-only || exit 1

# Install required roles.
ansible-galaxy install -r ./requirements.yaml

# Run playbook.
systemd-inhibit ansible-playbook --ask-become-pass ./desktop.yaml

# Notify after finishing.
notify-send --icon=terminal --urgency=critical 'Machine provisioned!' 'Ansible finished running.'
paplay /usr/share/sounds/freedesktop/stereo/complete.oga
