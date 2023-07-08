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