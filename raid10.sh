yum install mdadm -y;
# mdadm -create [disk name] [lvl] [no of devices] [path]
mdadm --create --verbose /dev/md10 --level=10 --raid-devices=4 /dev/sdb /dev/sdc /dev/sdd /dev/sde;
cat /proc/mdstat;
mkfs.ext4 /dev/md10;
mkdir /mnt/raid10;
mount /dev/md10 /mnt/raid10;


++++++++++++++++++++++++++++++++
raid 10 using raid 1


# this command will remove the block from the hdd
mdadm --stop /dev/md0
mdadm --zero-superblock /dev/sdb
mdadm --zero-superblock /dev/sd[b-e]


