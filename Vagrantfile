# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
VAGRANTFILE_API_VERSION = '2'.freeze
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.synced_folder "D:/Arquivos/devops/vagrant/djangoserver", "/home/vagrant/share", nfs:true

  # Se precisar de um novo: D:/Arquivos/devops/vagrant/djangoserver/package.box
  # vagrant add mybox package.box
  # config.vm.box_url = "file:package"
  # config.vm.box = 'myapache'

  config.vm.box = 'ubuntu/trusty64'


  config.vm.define :django do |django_config|
    django_config.vm.hostname = 'django'
    django_config.vm.network :private_network,
                         ip: '192.168.33.20'
  end
  config.vm.define :apache do |apache_config|
    apache_config.vm.hostname = 'apache'
    apache_config.vm.network :private_network,
                         ip: '192.168.33.30'
  end
  config.vm.define :apachepython27 do |apachepython27_config|
    apachepython27_config.vm.hostname = 'apachepython27'
    apachepython27_config.vm.network :private_network,
                         ip: '192.168.33.31'
  end
  config.vm.define :apachepython3 do |apachepython3_config|
    apachepython3_config.vm.hostname = 'apachepython3'
    apachepython3_config.vm.network :private_network,
                         ip: '192.168.33.32'
  end
  config.vm.define :nginx do |nginx_config|
    nginx_config.vm.hostname = 'nginx'
    nginx_config.vm.network :private_network,
                         ip: '192.168.33.40'
  end
  config.vm.define :djangoserver do |djangoserver_config|
    djangoserver_config.vm.hostname = 'djangoserver'
    djangoserver_config.vm.network :private_network,
                         ip: '192.168.50.50'
  end
  ## djangoserver51 tem snapshot - final das trava de instalação
  config.vm.define :djangoserver51 do |djangoserver51_config|
    djangoserver51_config.vm.hostname = 'djangoserver51'
    djangoserver51_config.vm.network :private_network,
                         ip: '192.168.50.51'
    # config.vm.provision :shell, path: "boot_SimpleProject.sh"
  end
  # Fiz o test de instalação e funcionou novamente
  config.vm.define :djangoserver52 do |djangoserver52_config|
    djangoserver52_config.vm.hostname = 'djangoserver52'
    djangoserver52_config.vm.network :private_network,
                         ip: '192.168.50.52'
    config.vm.provision :shell, path: "boot.sh"
  end
  # mysqlserver
  # config.vm.network :forwarded_port, guest: 3306, host: 3306
  config.vm.define :mysqlserver01 do |mysqlserver01_config|
    config.vm.network :forwarded_port, guest: 3308, host: 3308
    mysqlserver01_config.vm.hostname = 'mysqlserver01'
    mysqlserver01_config.vm.network :private_network,
                         ip: '192.168.60.60'
    # config.vm.provision :shell, path: "boot.sh"
  end
end
