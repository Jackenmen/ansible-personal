# ansible-personal

Ansible playbooks I use for provisioning my computers.

## How to install and provision a machine from this repository?

To automatically clone this repository, install Ansible, and execute the playbook, run this one-liner:
```bash
bash <(wget -qO - https://github.com/jack1142/ansible-personal/raw/main/download.sh)
```

In future, to provision the machine, run:
```bash
~/ansible-personal/provision.sh
```

## What *should* be handled by this playbook but isn't?

- Setup backup solution (OneDrive, UrBackup).

## What needs to be done manually after provisioning?

- Switch to Breeze Dark theme
- Set license key for Sublime Text.
- Copy over `~/.gnupg/pubring.kbx` and `~/.gnupg/private-keys-v1.d/`.
- Copy over `~/.config/redial/sessions`.
- Run `gh auth login`.
- Add GitHub token to Sublime Text's MarkdownPreview package settings.
- Install MS Office 2010.

Be sure to reboot the whole system too :)
