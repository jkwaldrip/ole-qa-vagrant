# OLE QA Vagrant
---
## Create an Environment for Testing and Development with Kuality OLE

This repository installs a Vagrant box for 32-bit Ubuntu 14.04 (Trusty Tahr)
with a single-user RVM installation and Ruby 2.1.2.  This environment can 
be used for running or developing automated tests with [Kuality OLE](http://github.com/kuali/kuality-ole).

## Installation

With Vagrant installed and VirtualBox as a virtual machine provider, 
clone this repository to your preferred Vagrant directory, then
in a shell session, navigate to this directory and run:

    $ vagrant box add ubuntu/trusty32
    $ vagrant up

This will download the official Ubuntu 32-bit 14.04 (Trusty Tahr) VirtualBox machine,
then bring it online and install both RVM and Ruby.  Please note that downloading the
VirtualBox machine and installing Ruby will take some time.
