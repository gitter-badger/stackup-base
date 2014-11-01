require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/local/sbin'

describe package('ntp') do
  it { should be_installed }
end

describe service('ntp') do
  it { should be_enabled }
end

describe service('ntpd') do
  it { should be_running }
end
