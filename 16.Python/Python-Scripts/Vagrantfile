Vagrant.configure("2") do |config|

  config.vm.define "scriptbox" do |scriptbox|
    scriptbox.vm.box = "ubuntu/bionic64"
	scriptbox.vm.hostname = "scriptbox"
	scriptbox.vm.network "private_network", ip: "192.168.10.2"
  end

    config.vm.define "web01" do |web01|
    web01.vm.box = "centos/7"
	web01.vm.hostname = "web01"
	web01.vm.network "private_network", ip: "192.168.10.3"
	web01.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
	vb.cpus = 2
        end
    end
  
  config.vm.define "web02" do |web02|
    web02.vm.box = "centos/7"
	web02.vm.hostname = "web02"
	web02.vm.network "private_network", ip: "192.168.10.4"
  end
  
end
