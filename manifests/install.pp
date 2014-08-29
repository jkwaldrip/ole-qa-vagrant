# mode: -*- ruby -*-
# vi: set ft=ruby :

include rvm

user { 'vagrant':
       ensure => present
}
rvm::system_user { vagrant: }
notify {"Installing Ruby 2.1.2": }
notify {"This may take some time": }
rvm_system_ruby { 'ruby-2.1.2':
                    ensure => present,
                    default_use => true
}
notify {"Installing bundler for Ruby 2.1.2":}
rvm_gem { 'bundler':
          name => 'bundler',
          ruby_version => 'ruby-2.1.2',
          ensure => 'latest',
          require => Rvm_system_ruby['ruby-2.1.2'];
}
