require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/local/sbin'

%w(
  bsd-mailx
  build-essential
  git
  git-extras
  iotop
).each do |installed_package|
  describe package(installed_package) do
    it { should be_installed }
  end
end
