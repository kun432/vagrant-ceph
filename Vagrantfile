# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV["VAGRANT_EXPERIMENTAL"] = "disks"

Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.ssh.insert_key = false
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true

  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder "./share", "/share" , type: "virtualbox"

  (1..3).each do |n|
    config.vm.define "node-#{n}" do |c|
      c.vm.hostname = "node-#{n}.internal"
      c.vm.disk :disk, name: "pv", size: "10GB"
      c.vm.network "private_network", ip: "10.10.0.2#{n}"
      c.vm.provider "virtualbox" do |v|
        v.gui = false
        v.cpus = 1
        v.memory = 2048
      end

      c.vm.provision :shell, :path => "scripts/setup-base.sh"
      c.vm.provision :shell, :path => "scripts/setup-docker.sh"
      c.vm.provision :shell, :path => "scripts/setup-ceph.sh"
      #if n == 1 then
      #  c.vm.provision :shell, :path => "scripts/setup-ceph-initail.sh"
      #else
      #  c.vm.provision :shell, :path => "scripts/setup-ceph-rest.sh"
      #end
    end
  end

  config.vm.define "client" do |c|
    c.vm.hostname = "client.internal"
    c.vm.network "private_network", ip: "10.10.0.11"
    c.vm.provider "virtualbox" do |v|
      v.gui = false
      v.cpus = 1
      v.memory = 1024
    end
    c.vm.provision :shell, :path => "scripts/setup-base.sh"
  end

end
