rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
yum install https://www.elrepo.org/elrepo-release-7.el7.elrepo.noarch.rpm -y
yum --disablerepo=\* --enablerepo=elrepo-kernel install -y kernel-lt.x86_64 -y
grub2-set-default 0
reboot

#rpm -qa|grep kernel|grep 3.10
#rpm -qa|grep kernel|grep 3.10|xargs yum remove -y

#yum --disablerepo=\* --enablerepo=elrepo-kernel install -y kernel-lt-tools.x86_64 -y

