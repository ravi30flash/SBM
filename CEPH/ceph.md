# Ceph lab configurations


---
# step 1: setting up the machines
```bash
# setting up the monitor
hostnamectl set-hostname ceph-monitor
setenforce 0;
systemctl stop firewalld;
systemctl disable firewalld;

```

