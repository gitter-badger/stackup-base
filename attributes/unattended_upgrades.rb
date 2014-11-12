default['apt']['unattended_upgrades']['enabled'] = true

default['apt']['unattended_upgrades']['allowed_origins'] = [
  '${distro_id}:${distro_codename}-security'
]

default['apt']['unattended_upgrades']['automatic_reboot'] = 'true'
default['apt']['unattended_upgrades']['automatic_reboot_time'] = '04:00'
default['apt']['unattended_upgrades']['dl_limit'] = 70
default['apt']['unattended_upgrades']['mail'] = false
