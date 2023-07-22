## Installation of BeeGFS
![](./Images/Centos%207.9%20(2).png)

### Step 1: setting up the machine
```bash
# setting up the machine
hostnamectl set-hostname beegfs;
sed -i 's/^SELINUX=.*$/SELINUX=disabled/g' /etc/selinux/config;
systemctl stop firewalld; systemctl disable firewalld;
su;
```
![](./Images/1.jpg)

### Step 2: installing the packages
```bash
# installing the package
yum install nano wget vim -y &> /dev/null
wget --no-check-certificate -O /etc/yum.repos.d/beegfs.repo https://www.beegfs.io/release/beegfs_7.2/dists/beegfs-rhel7.repo
yum install beegfs-utils beegfs-client beegfs-meta beegfs-storage beegfs-mgmtd -y;
mkdir -p /mnt/beegfs/meta;
mkdir -p /mnt/beegfs/storage;
mkdir -p /mnt/beegfs/beegfs_mgmtd;
```
![](./Images/2.jpg)

### Step 3: mounting the disk
```bash
# listing the blocks
lsblk
# create partion
fdisk /dev/sdb
-> n
-> enter
-> enter
-> w
# format the disk
mkfs.xfs /dev/sdb1
# create a folder in /mnt/ folder
mkdir /mnt/beegfs
# mount the disk
mount /dev/sdb1 /mnt/beegfs
```
![](./Images/2.1.jpg)
![](./Images/2.2.jpg)
![](./Images/2.3.jpg)

### Step 4: setting up the beegfs-mgmtd server
```bash
# edit the config file
vim /etc/beegfs/beegfs-client.conf
	# add ip of the beegfs-master to conf file
	-> sysMgmtdHost = 10.10.10.181
# setup the path for the beegfs-mgmtd server
/opt/beegfs/sbin/beegfs-setup-mgmtd -p /mnt/beegfs/beegfs_mgmtd
# start the services
systemctl start beegfs-mgmtd;
systemctl enable beegfs-mgmtd;
systemctl status beegfs-mgmtd;
```
![](./Images/5.jpg)

### Step 5: setting up the beegfs-meta server
```bash
# setup the path for the beegfs-meta
/opt/beegfs/sbin/beegfs-setup-meta -p /mnt/beegfs/meta -s 1 -m 10.10.10.181    
systemctl start beegfs-meta
systemctl enable beegfs-meta
systemctl status beegfs-meta
```
![](./Images/6.jpg)
### Step 6: setting up the beegfs-storage server
```bash
# setup the path for the beegfs-storage
/opt/beegfs/sbin/beegfs-setup-storage -p /mnt/beegfs/storage -s 2 -i 1 -m 10.10.10.181;
systemctl start beegfs-storage;
systemctl enable beegfs-storage;
systemctl status beegfs-storage;
```
![](./Images/6.jpg)













