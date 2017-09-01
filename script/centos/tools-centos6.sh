#!/bin/bash
## Copyright: IterNull
## https://www.iternull.com/

yum update -y
yum install -y epel-release
#rpm -ivh http://repository.it4i.cz/mirrors/repoforge/redhat/el6/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
yum install -y vim man htop bash-com* lsof tar zip tree bc git wget rsync sysstat iftop iptraf ifstat netcat socat openssh-clients tmux python python-setuptools
easy_install pip
