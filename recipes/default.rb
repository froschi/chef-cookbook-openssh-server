packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    openssh-server
  /
when "precise"
  packages |= %w/
    openssh-server
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
