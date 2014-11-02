service 'ssh'

cookbook_file '/etc/ssh/sshd_config' do
  source 'sshd_config'
  notifies :restart, 'service[ssh]'
end
