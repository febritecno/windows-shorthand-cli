ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'
Vagrant.require_version '>= 1.5'

Vagrant.configure('2') do |config|
  name = File.basename(Dir.getwd) + '-dev'

  config.vm.box = 'joshfng/railsbox' #edit sesuai load box kalau local, itu cloud
  config.ssh.forward_agent = true
  config.vm.hostname = name

  config.vm.synced_folder '.', '/febri' #folder sharing vm dan laptop
  	
  config.vm.provider :virtualbox do |v|
    v.name = name
    v.memory = 2048
    v.cpus = 2
    v.customize [
      'modifyvm', :id,
      '--nictype1', 'virtio',
      '--name', name,
      '--natdnshostresolver1', 'on'
    ]
  end
  
  #note:
  #user/password ssh dan root = vagrant/vagrant
  #user/password mysql = root/root
  #file rails.box
  #localhost=set 0.0.0.0 di vagrant bukan 127.0.0.1
  
  #port untuk bisa vm di akses di laptop
	# rails
	config.vm.network 'forwarded_port', guest: 3000, host: 3000
	#strapi
	config.vm.network 'forwarded_port', guest: 1337, host: 1337
	#phoenix
	config.vm.network 'forwarded_port', guest: 4000, host: 4000
	#sql
	config.vm.network "forwarded_port", guest: 3306, host: 3306
	#postgresql
	config.vm.network "forwarded_port", guest: 5432, host: 5432
	#mongodb
	config.vm.network "forwarded_port", guest: 27017, host: 27017
	#network
    config.vm.network "private_network", ip: "192.168.33.10"
end
