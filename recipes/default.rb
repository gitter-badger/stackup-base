include_recipe 'apt'

include_recipe 'stackup-base::fail2ban'
include_recipe 'stackup-base::firewall'
include_recipe 'stackup-base::ntpd'
include_recipe 'stackup-base::packages'
include_recipe 'stackup-base::ssh'
