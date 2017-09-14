#!/bin/sh

wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum -y install jenkins java

systemctl stop firewalld
systemctl disable firewalld

systemctl start jenkins
# Not a native service, use chkconfig on
# systemctl enable jenkins
chkconfig jenkins on








