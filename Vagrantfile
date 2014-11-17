# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "houston" do |houston|
    houston.vm.box = "get-vitamin-c/vc-ubuntu"
    houston.vm.box_url = "https://vagrantcloud.com/get-vitamin-c/boxes/vc-ubuntu/versions/1/providers/aws.box"
    houston.vm.network :forwarded_port, guest: 3000, host: 3000
    houston.vm.network :private_network, ip: '192.168.50.50'
    houston.vm.synced_folder "../houston/", "/vagrant", nfs: true

    houston.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.roles_path = "roles"
      chef.add_role "houston"
    end

  end

  config.vm.define "canaveral" do |canaveral|
    canaveral.vm.box = "get-vitamin-c/vc-ubuntu"
    canaveral.vm.box_url = "https://vagrantcloud.com/get-vitamin-c/boxes/vc-ubuntu/versions/1/providers/aws.box"
    canaveral.vm.network :forwarded_port, guest: 4568, host: 4568
    canaveral.vm.network :private_network, ip: '192.168.50.51'
    canaveral.vm.synced_folder "../canaveral/", "/vagrant", nfs: true

    canaveral.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.roles_path = "roles"
      chef.add_role "canaveral"
    end
  end

  config.vm.define "tdrs" do |tdrs|
    tdrs.vm.box = "get-vitamin-c/vc-ubuntu"
    tdrs.vm.box_url = "https://vagrantcloud.com/get-vitamin-c/boxes/vc-ubuntu/versions/1/providers/aws.box"
    tdrs.vm.network :forwarded_port, guest: 4567, host: 4567
    tdrs.vm.network :private_network, ip: '192.168.50.52'
    tdrs.vm.synced_folder "../TDRS/", "/vagrant", nfs: true

    tdrs.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.roles_path = "roles"
      chef.add_role "tdrs"
    end
  end

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", 4]
  end

end
