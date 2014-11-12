# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "houston" do |houston|
    
    houston.vm.box = "houston"
    houston.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/1/providers/virtualbox.box"
    
    houston.vm.network :forwarded_port, guest: 3000, host: 3000

    houston.vm.synced_folder "houston/", "/vagrant"
  end

  config.vm.define "canaveral" do |canaveral|
    
    canaveral.vm.box = "canaveral"
    canaveral.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/1/providers/virtualbox.box"

    canaveral.vm.network :forwarded_port, guest: 4568, host: 4568

    canaveral.vm.synced_folder "canaveral/", "/vagrant"
  end

  config.vm.define "tdrs" do |tdrs|
    
    tdrs.vm.box = "tdrs"
    tdrs.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/1/providers/virtualbox.box"
    
    tdrs.vm.network :forwarded_port, guest: 4567, host: 4567
    
    tdrs.vm.synced_folder "TDRS/", "/vagrant"
  end
end
