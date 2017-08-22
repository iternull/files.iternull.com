#!/bin/bash
## Copyright: IterNull
## https://www.iternull.com/

yum update -y
yum install -y epel-release
#rpm -ivh http://repository.it4i.cz/mirrors/repoforge/redhat/el7/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
yum install -y vim htop bash-com* lsof wget tar zip tree tmux
