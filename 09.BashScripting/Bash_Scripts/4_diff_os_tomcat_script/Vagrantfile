Vagrant.configure("2") do |config|

  config.vm.define "tom_centos6" do |tom_centos6|
    tom_centos6.vm.box = "centos/6"
    tom_centos6.vm.hostname = "tomcentos6"
    tom_centos6.vm.network "private_network", ip: "192.168.6.2"
  end

    config.vm.define "tom_centos7" do |tom_centos7|
    tom_centos7.vm.box = "centos/7"
        tom_centos7.vm.hostname = "tomcentos7"
        tom_centos7.vm.network "private_network", ip: "192.168.6.3"
        tom_centos7.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
        end
    end
	
  config.vm.define "tom_ubuntu14" do |tom_ubuntu14|
    tom_ubuntu14.vm.box = "ubuntu/trusty64"
        tom_ubuntu14.vm.hostname = "tomubuntu14"
        tom_ubuntu14.vm.network "private_network", ip: "192.168.6.4"
  end
  
  config.vm.define "tom_ubuntu16" do |tom_ubuntu16|
    tom_ubuntu16.vm.box = "ubuntu/xenial64"
    tom_ubuntu16.vm.hostname = "tomubuntu16"
   tom_ubuntu16.vm.network "private_network", ip: "192.168.6.5"
  end

end

