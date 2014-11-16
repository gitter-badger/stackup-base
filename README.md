# stackup-base
[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/stack-up/stackup-base?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This cookbook will bootstrap a node. This cookbook is made for stack-up stacks, so it is opinionated.

## supports

 * Ubuntu 14.04

## what it does

 * installs fail2ban
 * installs and enables ufw (via firewall cookbook), opens port 22
 * installs ntpd
 * installs default packages
 * installs packages defined by node['base']['extra_packages']

---

[stack-up.net](http://stack-up.net)
