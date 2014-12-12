# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :raspi do |c|
    c.vm.box = "chef/ubuntu-14.04"
  end

  config.vm.provision :itamae do |config|
    # recipes(String or Array)
    config.recipes = ['./recipe/raspi-ruby-dev.rb']

    #config.json = './node.json'
  end
end
