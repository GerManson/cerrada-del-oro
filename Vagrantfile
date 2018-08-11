# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure('2') do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = 'ubuntu/trusty64'

  config.ssh.forward_agent = true

  config.vm.network :private_network, ip: '192.168.33.10'
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  # config.vm.network :forwarded_port, guest: 3001, host: 3001
  # config.vm.network :forwarded_port, guest: 5431, host: 5431

  config.vm.synced_folder '.', '/vagrant/cerradadeloro'

  config.vm.provider :virtualbox do |v|
    v.memory = 3072
    v.cpus = 2
    v.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    v.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
  end

  config.vm.define 'cerradadeloro', autostart: true, primary: true do |cerradadeloro|
  end
end
