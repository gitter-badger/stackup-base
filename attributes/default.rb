default['apt']['compile_time_update'] = true

default['base']['extra_packages'] = []

default['base']['unattended-upgrades']['Mail'] = 'foo@example.com'
default['base']['unattended-upgrades']['MailOnlyOnError'] = 'true'
default['base']['unattended-upgrades']['Automatic-Reboot'] = 'true'
default['base']['unattended-upgrades']['Automatic-Reboot-Time'] = '02:00'
default['base']['unattended-upgrades']['Dl-Limit'] = '70'
