BOX_IMAGE = "bento/ubuntu-18.04"

nr_account_id = ENV['NR_ACCOUNT_ID']
nr_license_key = ENV['NR_LICENSE_KEY']
nr_user_api_key = ENV['NR_USER_API_KEY']

Vagrant.configure("2") do |config|

	config.vm.define "v6" do |v6|
  	    v6.vm.box = BOX_IMAGE
        v6.vm.network "private_network", ip: "10.1.42.119"
        v6.vm.network "forwarded_port", guest: 8200, host: 8200 #Vault UI
        v6.vm.hostname = "v6"
        v6.vm.provider "virtualbox" do |va|
            va.memory = 2024
            va.cpus = 2
        end
        v6.vm.provision "ansible_local" do |ansible|
            ansible.playbook = "vault-playbook-vagrant.yml"
            ansible.extra_vars = {
                config_ip: "10.1.42.119",
                node_name: "v6",
                vault_version: "1.8.4+ent",
                nr_account_id: nr_account_id,
                nr_license_key: nr_license_key,
                nr_user_api_key: nr_user_api_key
            }
        end
	end
end

