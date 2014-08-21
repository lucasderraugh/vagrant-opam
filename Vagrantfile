# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "trusty32"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"
  config.vm.network :forwarded_port, guest: 80, host: 8000

  config.ssh.forward_x11 = false

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.name = "cs3110-VM"
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-opam.sh"
  #config.vm.provision :shell, privileged: false, :path => "setup-opamdoc.sh"
  #config.vm.provision :shell, privileged: false, :path => "setup-vim.sh"
  #config.vm.provision :shell, privileged: false, :path => "setup-emacs.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-3110.sh"
  #config.vm.provision :shell, privileged: false, :path => "setup-git.sh"
  #config.vm.provision :shell, privileged: false, :path => "setup-lxde.sh"
  #config.vm.provision :shell, privileged: false, :path => "setup-tex.sh"
  #config.vm.provision :shell, privileged: false, :path => "setup-sublime.sh"
  #config.vm.provision :shell, privileged: false, :path => "setup-jre.sh"

  #config.vm.synced_folder ".", "/vagrant", disabled: true

  # config.vm.provision :shell, privileged: false, :path => "clean-shutdown.sh"
end

# -*- mode: ruby -*-
# vi: set ft=ruby :

