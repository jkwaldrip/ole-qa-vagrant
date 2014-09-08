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
}
