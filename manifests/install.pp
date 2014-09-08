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

  package { 'xvfb':
            ensure => 'installed'
  }


  package { 'firefox':
            ensure => '28.0+build2-0ubuntu2',
  }

  rvm::ruby { 'default':
              user => 'vagrant',
              version => 'ruby-2.1.2'
  }

  rvm::gem { 'bundler':
             ruby => Rvm::Ruby['default']
  }

  vcsrepo { '/home/vagrant/testing':
            ensure => present,
            provider => git,
            source => 'https://github.com/kuali/kuality-ole.git',
            revision => 'master',
            user => 'vagrant'
  }

}
