# ssh-copy-id (Windows to Linux variant)
## This script assumes that:
* src machine is Windows
* dst machine is Linux (for now)

## Synopsis
`ssh-copy-id [user@]machine [-i [identity_file]]`

## Description
`ssh-copy-id` is a script that uses ssh to log into a remote machine (presumably using a login password, so password authentication should be enabled, unless you've done some clever use of multiple identities) It also changes the permissions of the remote user's home, `~/.ssh`, and `~/.ssh/authorized_keys` to remove group writability (which would otherwise prevent you from logging in, if the remote sshd has StrictModes set in its configuration). If the -i option is given then the identity file (defaults to `%userprofile%\.ssh\id_rsa.pub`) is used, regardless of whether there are any keys in your ssh-agent. If the -i option is used, or the ssh-add produced no output, then it uses the contents of the identity file. Once it has one or more fingerprints (by whatever means) it uses ssh to append them to `~/.ssh/authorized_keys` on the remote machine (creating the file, and directory, if necessary)

## Ref:
* [Source](https://linux.die.net/man/1/ssh-copy-id)
