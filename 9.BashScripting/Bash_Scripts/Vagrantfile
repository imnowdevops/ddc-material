Vagrant.configure("2") do |config|

  config.vm.define "scriptbox" do |scriptbox|
    scriptbox.vm.box = "centos/7"
	scriptbox.vm.hostname = "scriptbox"
	scriptbox.vm.network "private_network", ip: "192.168.5.2"
  end

    config.vm.define "web01" do |web01|
    web01.vm.box = "centos/7"
	web01.vm.hostname = "web01"
	web01.vm.network "private_network", ip: "192.168.5.3"
    end
  
  config.vm.define "web02" do |web02|
    web02.vm.box = "centos/7"
	web02.vm.hostname = "web02"
	web02.vm.network "private_network", ip: "192.168.5.4"
  end
  
  config.vm.define "web03" do |web03|
    web03.vm.box = "ubuntu/xenial64"
	web03.vm.hostname = "web03"
	web03.vm.network "private_network", ip: "192.168.5.5"
  end
end
