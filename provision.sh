#!/usr/bin/env bash
# Make sure we're using up-to-date version of the playbook.
git -C "$(dirname "$(readlink -f "$0")")" pull --ff-only || exit 1

# Install required roles.
ansible-galaxy install -r "$(dirname "$(readlink -f "$0")")/requirements.yaml"

# Run playbook.
ansible-playbook --ask-become-pass "$(dirname "$(readlink -f "$0")")/desktop.yaml"

# Notify after finishing.
notify-send --icon=terminal --urgency=critical 'Machine provisioned!' 'Ansible finished running.'
paplay /usr/share/sounds/freedesktop/stereo/complete.oga
