include_recipe "libcomerr"
include_recipe "libgssapi-krb5"
include_recipe "libkrb5"
include_recipe "libpam"
include_recipe "libselinux"
include_recipe "libssl"
include_recipe "libwrap"
include_recipe "openssh-client"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    openssh-server
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
