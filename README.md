# Vagrant-LXC-Btrfs


## Problem

You want to use LXC and Btrfs on OSX. VirtualBox + Vagrant to rescue!
I'have attached a 10GB disk to VM (/dev/sdb) for Btrfs

### Create Btrfs Volume

    $ sudo mkfs.btrfs -L btrfs-test /dev/sdb

    # mount it to defaulf folder for LXC VMs
    $ mount /dev/sdb /var/lib/lxc

    # create a linux container
    $ sudo lxc-create -n mycontainer -t ubuntu


## How to use


LXC Guide:
  http://wiki.1tux.org/wiki/Lxc/Running
  http://tech.shift.com/post/39072117037/advanced-devops-with-vagrant-and-lxc
  http://wrocloverb-lxc.site44.com/

Btrf Guide:
  http://www.howtoforge.com/a-beginners-guide-to-btrfs
  http://www.funtoo.org/wiki/BTRFS_Fun
  http://terrywang.net/archives/1611 (with LXC)


## Contribute

Patches and suggestions welcome.

## Issues

Please raise issues via the github issue tracker.

## License

Please see the [LICENSE](https://github.com/mindreframer/vagrant-varnish-nginx-lua/blob/master/LICENSE)
file.


[Vagrant]: http://vagrantup.com
[Puppet]: http://puppetlabs.com


======== http://www.howtoforge.com/a-beginners-guide-to-btrfs ===========
- Add a new (virtual) hard disk to the VM
    $ cat /proc/partitions
    major minor  #blocks  name

      11        0    1048575 sr0
       8        0   41943040 sda
       8        1   41417728 sda1
       8        2          1 sda2
       8        5     522240 sda5
       8       16   10485760 sdb <-- our new 10GB drive

- mkfs.btrfs /dev/sdb
