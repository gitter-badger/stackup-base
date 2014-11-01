require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/local/sbin'

describe package('fail2ban') do
  it { should be_installed }
end

describe service('fail2ban') do
  it { should be_enabled }
  it { should be_running }
end
