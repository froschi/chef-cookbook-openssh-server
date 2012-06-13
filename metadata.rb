maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures openssh-server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libcomerr", ">= 0.0.1"
depends          "libkrb5", ">= 0.0.1"
depends          "libpam", ">= 0.0.1"
depends          "libselinux", ">= 0.0.1"
depends          "libwrap", ">= 0.0.1"
depends          "openssh-client", ">= 0.0.1"
