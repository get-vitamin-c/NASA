NASA
====

###Onboarding for Vitamin C
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
