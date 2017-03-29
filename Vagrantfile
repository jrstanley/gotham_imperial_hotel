Vagrant.configure("2") do |config|

  # Standard minimal Ubuntu box
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Port 8443 is where grunt server is doing serving from
  config.vm.network :forwarded_port, guest: 8443, host: 8443
  # Port 35729 is required by LiveReload to reflect content changes
  config.vm.network :forwarded_port, guest: 35729, host: 35729

  # projects folder next to this Vagrantfile will be shared with the VM
  config.vm.synced_folder ".", "/home/vagrant/project"

  # Configure everything else ready to run Yeoman
  config.vm.provision "shell", path: "provision.sh"

end