# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    
        config.vm.box = "scotch/box"
        config.vm.network "private_network", ip: "192.168.33.10"
        config.vm.hostname = "scotchbox"
        config.vm.provision 'shell', path: "tomeeBootstrap.sh"
        config.vm.provision 'shell', path: "startUp.sh", run: "always"
    
end