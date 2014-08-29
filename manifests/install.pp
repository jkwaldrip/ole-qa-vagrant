# mode: -*- ruby -*-
# vi: set ft=ruby :

include single_user_rvm

user { 'vagrant':
       ensure => present
}

single_user_rvm::install { 'vagrant': }
single_user_rvm::install_ruby { 'ruby-2.1.2':
                                user => 'vagrant'
}
