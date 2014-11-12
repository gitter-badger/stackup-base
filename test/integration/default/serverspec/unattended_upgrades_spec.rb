require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/local/sbin'

describe package('unattended-upgrades') do
  it { should be_installed }
end

describe file('/etc/apt/apt.conf.d/20auto-upgrades') do
  its(:content) do
    should match(/APT::Periodic::Update-Package-Lists "1";/)
    should match(/APT::Periodic::Unattended-Upgrade "1";/)
  end
end

describe file('/etc/apt/apt.conf.d/50unattended-upgrades') do
  its(:content) do
    should match(/\${distro_id}:\${distro_codename}-security/)
    should match(/Unattended-Upgrade::Mail "foo@example.com"/)
    should match(/Unattended-Upgrade::MailOnlyOnError "true"/)
    should match(/Unattended-Upgrade::Automatic-Reboot "true"/)
    should match(/Unattended-Upgrade::Automatic-Reboot-Time "02:00"/)
    should match(/Acquire::http::Dl-Limit "70"/)
  end
end
