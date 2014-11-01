require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/local/sbin'

describe package('ufw') do
  it { should be_installed }
end

describe service('ufw') do
  it { should be_enabled }
  it { should be_running }
end

describe command('ufw status verbose') do
  its(:stdout) { should match(/Status: active/) }
  its(:stdout) { should match(/deny \(incoming\)/) }
  its(:stdout) { should match(/allow \(outgoing\)/) }
  its(:stdout) { should match(/disabled \(routed\)/) }
  its(:stdout) { should match(/Logging: on \(low\)/) }
  its(:stdout) { should match(/22\s+ALLOW\sIN\s+Anywhere/) }
  its(:stdout) { should match(/22\s\(v6\)\s+ALLOW\sIN\s+Anywhere/) }
end
