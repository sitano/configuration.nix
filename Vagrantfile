# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
VAGRANT_DEFAULT_PROVIDER = "virtualbox"

Vagrant.require_version ">=1.5.2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  # Install before: $ vagrant plugin install vagrant-vbguest
  # Install before: $ vagrant plugin install vagrant-nixos
  config.vm.box = "cstrahan/nixos-14.04-x86_64"
  config.vm.box_url = "http://s3.amazonaws.com/oxdi/nixos-14.04-x86_64-virtualbox.box"
  #
  config.vbguest.auto_update = false

  # Vagrant / virtualbox DNS 10.0.2.3 not working
  # http://serverfault.com/questions/453185/vagrant-virtualbox-dns-10-0-2-3-not-working
  # http://www.virtualbox.org/manual/ch09.html#nat-adv-dns

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", 4096]
    v.customize ["modifyvm", :id, "--cpus", 4]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  config.vm.provider "vmware_fusion" do |v, override|
    v.vmx["memsize"] = "4096"
    v.vmx["numvcpus"] = "4"
    override.vm.box = "precise64_fusion"
  end

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network :private_network, ip: "192.168.33.20"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  #config.vm.network :public_network, ip: "192.168.10.87"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true
  # config.vm.host_name = "local"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.provision :nixos, :expression => {
  #   environment: {
  #     systemPackages: [ ]
  #   }
  # }

  config.vm.provision :nixos,
    :path => "./computers/vagrant-guest-dev.nix",
    :include => true,
    :debug => true

end
