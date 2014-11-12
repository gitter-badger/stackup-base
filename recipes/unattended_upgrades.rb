include_recipe 'apt::unattended-upgrades'

# wraps apt@2.6.0::unattended-upgrades:32
if node['apt']['unattended_upgrades']['mail']
  # mailutils is clearly in master: http://goo.gl/iQRNeF
  # but it seems they haven't bumped their version after adding it,
  # so I'm redefining package 'mailtuils' here.
  package 'mailutils'
  resources('package[mailutils]').package_name 'bsd-mailx'
end

# wraps apt@2.6.0::unattended-upgrades:42
resources(
  'template[/etc/apt/apt.conf.d/50unattended-upgrades]'
).cookbook 'stackup-base'
