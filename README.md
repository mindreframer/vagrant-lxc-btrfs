# Vagrant-LXC-Btrfs


## Problem

You want to use LXC and Btrfs on OSX. VirtualBox + Vagrant to rescue!


## How to use


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
