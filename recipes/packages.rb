%w(
  bsd-mailx
  build-essential
  git
  git-extras
  iotop
).each do |essential_package|
  package essential_package do
    action :upgrade
  end
end

node['base']['extra_packages'].each do |extra_package|
  package extra_package do
    action :upgrade
  end
end
