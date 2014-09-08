# mode: -*- ruby -*-
# vi: set ft=ruby :

node default {
  user { 'vagrant':
          ensure => present
  }

  package { 'git':
            ensure => 'installed'
  }

  package { 'curl':
            ensure => 'installed'
  }

  package { 'make':
            ensure => 'installed'
  }

  rvm::ruby { 'default':
              user => 'vagrant',
              version => 'ruby-2.1.2'
  }

  rvm::gem { 'bundler':
             ruby => Rvm::Ruby['default']
  }

  include git

  git::repo { 'kuality-ole':
              path => '/home/vagrant/kuality-ole',
              source => 'https://github.com/kuali/kuality-ole.git'
  }
}
