# Ubuntu Server – Essentials

## Users & Permissions
- `adduser demo`
- `usermod -aG sudo demo`
- `chmod`, `chown` basics

## Services / Logs
- `systemctl status ssh`
- `journalctl -xe`

## SSH & Firewall
- Install OpenSSH Server: `sudo apt install openssh-server`
- Enable firewall: `sudo ufw enable`
- Allow SSH: `sudo ufw allow 22/tcp`
