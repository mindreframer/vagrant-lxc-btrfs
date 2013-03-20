# Vagrant-LXC-Btrfs


## Problem

You want to use LXC and Btrfs on OSX. VirtualBox + Vagrant to rescue!
I'have attached a 10GB disk to VM (/dev/sdb) for Btrfs

### Create Btrfs Volume

    $ sudo mkfs.btrfs -L btrfs-test /dev/sdb

    # mount it to default folder for LXC VMs
    $ mount /dev/sdb /var/lib/lxc

    # create a linux container
    $ sudo lxc-create -n mycontainer -t ubuntu


## How to use


LXC Guide:

    http://wiki.1tux.org/wiki/Lxc/Running
    http://tech.shift.com/post/39072117037/advanced-devops-with-vagrant-and-lxc
    http://wrocloverb-lxc.site44.com/
    http://help.ubuntu.ru/wiki/%D1%80%D1%83%D0%BA%D0%BE%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%BE_%D0%BF%D0%BE_ubuntu_server/%D0%B2%D0%B8%D1%80%D1%82%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F/lxc

Btrf Guide:

    http://www.howtoforge.com/a-beginners-guide-to-btrfs
    http://www.funtoo.org/wiki/BTRFS_Fun
    http://terrywang.net/archives/1611 (with LXC)


## Contribute

Patches and suggestions welcome.

## Issues

Please raise issues via the github issue tracker.

## License

Please see the [LICENSE](https://github.com/mindreframer/vagrant-lxc-btrfs/blob/master/LICENSE)
file.


[Vagrant]: http://vagrantup.com
[Puppet]: http://puppetlabs.com
