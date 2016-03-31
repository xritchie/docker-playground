Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "rediscounter-dev"
  config.vm.network :forwarded_port, guest: 8000, host: 8000
  config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.provision "shell", path: "provision.sh"
  config.vm.synced_folder "./rediscounter", "/home/vagrant/rediscounter"
end
