# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	
  config.vm.box_url = "https://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-i386-v20140504.box"
  config.vm.box = "CentOS6.5_32bit"


  config.vm.hostname = "asoneLamp"
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
  config.vm.provision "shell", :path => "provision.sh"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

end
