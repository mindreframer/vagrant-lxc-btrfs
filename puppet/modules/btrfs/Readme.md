# Play with btrfs


- http://www.howtoforge.com/a-beginners-guide-to-btrfs
- http://terrywang.net/archives/1611 (some info about LXC)


List blocks:
  lsblk
  NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
  sr0     11:0    1  1024M  0 rom
  fd0      2:0    1     4K  0 disk
  sda      8:0    0    40G  0 disk
  ├─sda1   8:1    0  39.5G  0 part /
  ├─sda2   8:2    0     1K  0 part
  └─sda5   8:5    0   510M  0 part [SWAP]
  sdb      8:16   0    10G  0 disk





http://life.choffee.co.uk/post/9331075606/linux-containers-and-btrfs-snapshots

# create btfst partition
sudo mkfs.btrfs -L btrfs-test /dev/sdb


# mount btrfs to lxc folder
mount /dev/sdb /var/lib/lxc

# create some containers
sudo lxc-create -n mycontainer -t ubuntu