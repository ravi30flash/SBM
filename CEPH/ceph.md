
# Ceph introduction
```
-> ceph is unified distributed storage system designed for excellent
performance, reliablity and scalablity

-> ceph's design is based on the RADOS software which provides the ability to build a distributed storage system without a single point failure

-> software defined storage
-> ceph can hangle vast amount of data, therefore can also be used with data-intensive application like scientific data processing and media streaming
-> uses CRUSH(Controlled  Replication Under Scalable Hashing) algorithm,which enables ceph to scale,rebalance and recovers automatically

```


# Ceph lab configurations


---
# step 1: setting up the machines
```bash
# setting up the monitor
hostnamectl set-hostname ceph-monitor
setenforce 0;
systemctl stop firewalld;
systemctl disable firewalld;
su;

# setting up the controller
hostnamectl set-hostname ceph-controller
setenforce 0;
systemctl stop firewalld;
systemctl disable firewalld;
su;

# setting up the client
hostnamectl set-hostname ceph-client
setenforce 0;
systemctl stop firewalld;
systemctl disable firewalld;
su;

# setting up the compute01
hostnamectl set-hostname ceph-compute01
setenforce 0;
systemctl stop firewalld;
systemctl disable firewalld;
su;

# setting up the compute02
hostnamectl set-hostname ceph-compute02
setenforce 0;
systemctl stop firewalld;
systemctl disable firewalld;
su;

# make entry in /etc/hosts
cat << EOF >> /etc/hosts
192.168.xxx.xxx  controller.hpcsa.in controller
192.168.xxx.xxx  compute1.hpcsa.in compute1
192.168.xxx.xxx  compute2.hpcsa.in compute2
192.168.xxx.xxx  monitor.hpcsa.in monitor
192.168.xxx.xxx  client.hpcsa.in client
EOF

```

