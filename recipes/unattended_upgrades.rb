package 'unattended-upgrades'

cookbook_file '/etc/apt/apt.conf.d/20auto-upgrades' do
  source '20auto-upgrades'
end

cookbook_file '/etc/apt/apt.conf.d/50unattended-upgrades' do
  source '50unattended-upgrades'
end

template '/etc/apt/apt.conf.d/50unattended-upgrades' do
  source '50unattended-upgrades.erb'
  variables(
    unattended_upgrades: node['base']['unattended-upgrades']
  )
end
