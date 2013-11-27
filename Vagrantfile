# encoding: utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  #config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.box_url = "precise64.box"

  config.vm.network :forwarded_port, guest: 22, host: 2200
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 4000, host: 4000

  config.vm.network "public_network"

  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "1024"]
  end

  config.vm.provision :shell do |s|
    s.path = "provision.sh"
    s.args = ""
  end

  config.vm.provision :shell do |s|
    s.path = "shell-scripts/node.sh"
    s.args = ""
  end

  config.vm.provision :shell do |s|
    s.path = "shell-scripts/heroku.sh"
    s.args = ""
  end

  config.vm.provision :shell do |s|
    s.path = "shell-scripts/samba.sh"
    s.args = ""
  end

  config.vm.provision :shell do |s|
    s.path = "shell-scripts/dotfiles.sh"
    s.args = ""
  end

  config.vm.provision :shell do |s|
    s.path = "shell-scripts/environment.sh"
    s.args = ""
  end

end
