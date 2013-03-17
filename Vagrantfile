# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"

  # This shell provisioner installs librarian-puppet and runs it to install
  # puppet modules. After that it just runs puppet
  config.vm.provision :shell, :path => "shell/bootstrap.sh"

  # expose the VM on your network
  # config.vm.network :bridged, :bridge => "en1: Wi-Fi (AirPort)"

  config.vm.forward_port 80, 8080
end
