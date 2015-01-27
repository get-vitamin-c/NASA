NASA
====

###Onboarding for Vitamin C

Install Vagrant: http://www.vagrantup.com/downloads

Install VirtualBox: https://www.virtualbox.org/wiki/Downloads

Install RVM: https://rvm.io/rvm/install

Install Ruby 2.2.0 with RMV: rvm install 2.2.0

Set Ruby 2.2.0 to default: rvm --default use 2.2.0

Run the following commands:
```
mkdir vitaminc
cd vitaminc
git clone git@github.com:get-vitamin-c/NASA.git
git clone git@github.com:get-vitamin-c/houston.git
git clone git@github.com:get-vitamin-c/TDRS.git
git clone git@github.com:get-vitamin-c/canaveral.git
cd NASA
vagrant plugin install vagrant-librarian-chef
vagrant plugin install vagrant-vbguest 
gem install librarian-chef
librarian-chef install
vagrant up
```
