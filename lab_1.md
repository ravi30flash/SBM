<details>
<summary>step 1: install package mdadm</summary>

* `yum install mdadm -y`
![mdadm_install](./images/1.jpg)

</details>

<details>
<summary>step 2: create raid configuration</summary>

* `mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 /dev/sdb /dev/sdc`
![create_raid](./images/2.jpg)

</details>

<details>
<summary>step 3: create raid configuration</summary>

* `mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 /dev/sdb /dev/sdc`
![create_raid](./images/2.jpg)

</details>
<details>
<summary>step 4: create new partition</summary>

* `fdisk /dev/md0`
![create partition](./images/3.jpg)
* press `n`
* press `p`
* press `enter`
* press `enter`
* press `w`
</details>
<details>
<summary>step 5: format the partition</summary>

* `mkfs.ext4 /dev/md0`
![format block](./images/4.jpg)
</details>
<details>
<summary>step 6: mount the partition</summary>

* `mkdir /mnt/raid0`
* `mount /dev/md0 /mnt/raid0`
![mount block](./images/5.jpg)
</details>
<details>
<summary>step 7: check the partition</summary>

* `mdadm --detail /dev/md0`
![detail of block](./images/6.jpg)
</details>

