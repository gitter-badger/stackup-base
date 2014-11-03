service 'ssh' do
  provider Chef::Provider::Service::Upstart
end

cookbook_file '/etc/ssh/sshd_config' do
  source 'sshd_config'
  notifies :restart, 'service[ssh]'
end
