# -*- mode: ruby -*-
# vi: set ft=ruby :

#  Copyright 2005-2014 The Kuali Foundation
#
#  Licensed under the Educational Community License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at:
#
#    http://www.opensource.org/licenses/ecl2.php
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty32"

  # Forward SSH Agent to allow Github commits.
  #
  # First, ensure that the private key is added to the SSH agent with:
  #   ssh-add ~/.ssh/id_rsa
  #
  # Then uncomment the next two lines to enable SSH agent forwarding.
  #config.ssh.private_key_path = ['~/.vagrant.d/insecure_private_key','~/.ssh/id_rsa']
  #config.ssh.forward_agent = true

  # Update server
  config.vm.provision :shell do |shell|
    shell.inline = "sudo apt-get -y update > update.$(date +%Y%m%d-%H%S)"
  end

  # Use puppet to install RVM, Ruby, & Bundler
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'manifests'
    puppet.module_path    = 'modules'
    puppet.manifest_file  = 'install.pp'
  end

end
