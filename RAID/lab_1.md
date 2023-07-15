
## step 1: install package mdadm

```
yum install mdadm -y
```
 ![mdadm_install](./images/1.jpg)




## step 2: create raid configuration

```
mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 /dev/sdb /dev/sdc
```
![create_raid](./images/2.jpg)




## step 3: create raid configuration

```
mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 /dev/sdb /dev/sdc
```
![create_raid](./images/2.jpg)



## step 4: create new partition

```
fdisk /dev/md0
```
![create partition](./images/3.jpg)
```
press n
press p
press enter
press enter
press w
```



## step 5: format the partition

```
mkfs.ext4 /dev/md0
```
![format block](./images/4.jpg)


## step 6: mount the partition

```
mkdir /mnt/raid0
mount /dev/md0 /mnt/raid0
```
![mount block](./images/5.jpg)


## step 7: check the partition

```
mdadm --detail /dev/md0
```
![detail of block](./images/6.jpg)


