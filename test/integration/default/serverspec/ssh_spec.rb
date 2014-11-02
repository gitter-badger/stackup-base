require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/local/sbin'

describe file('/etc/ssh/sshd_config') do
  its(:content) { should match(/PermitEmptyPasswords no/) }
  its(:content) { should match(/PasswordAuthentication no/) }
end
