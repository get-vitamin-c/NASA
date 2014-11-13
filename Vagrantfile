# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "houston" do |houston|
    houston.vm.box = "houston"
    houston.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/1/providers/virtualbox.box"
    houston.vm.network :forwarded_port, guest: 3000, host: 3000
    houston.vm.synced_folder "houston/", "/vagrant"
    
    houston.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.roles_path = "roles"
      chef.add_role "houston"

      chef.json = {
        :rvm => {
          :rubies => ['2.1.4'],
          :default_ruby => '2.1.4'
        },
        :postgresql => {
          :password => {
            :postgres => "V1t@minC"
          },
          :pg_hba => {
            :type => "local",
            :database => "all", 
            :user => "all",
            :method => "md5"
          },
          :users => {
            :username => "vitaminc",
            :password => "V1t@minC",
            :superuser => true
          }
        }
      }
    end
  end

  config.vm.define "canaveral" do |canaveral|
    canaveral.vm.box = "canaveral"
    canaveral.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/1/providers/virtualbox.box"
    canaveral.vm.network :forwarded_port, guest: 4568, host: 4568
    canaveral.vm.synced_folder "canaveral/", "/vagrant"
    
    canaveral.vm.provision :chef_solo do |chef|
      chef.roles_path = "roles"
      chef.add_role "canaveral"

      chef.json = {
        :rvm => {
          :rubies => ['2.1.4'],
          :default_ruby => '2.1.4'
        }
      }
    end
  end

  config.vm.define "tdrs" do |tdrs|
    tdrs.vm.box = "tdrs"
    tdrs.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/1/providers/virtualbox.box"
    tdrs.vm.network :forwarded_port, guest: 4567, host: 4567
    tdrs.vm.synced_folder "TDRS/", "/vagrant"

    tdrs.berkshelf.enabled = true
    
    tdrs.vm.provision :chef_solo do |chef|
      chef.roles_path = "roles"
      chef.add_role "tdrs"

      chef.json = {
        :rvm => {
          :rubies => ['2.1.4'],
          :default_ruby => '2.1.4'
        }
      }
    end
  end

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

end
