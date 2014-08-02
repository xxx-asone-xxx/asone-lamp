#!/usr/bin/env bash


#ansible install
if ! [ `which ansible` ]; then
    sudo rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
    sudo yum update
    sudo yum install ansible -y
fi

#git install
if ! [ `which git` ]; then
    sudo yum install git -y
fi

#copy mongodb rpm
if ! [ `ll  /vagrant/settingFile/10gen.repo /etc/yum.repos.d/10gen.repo` ]; then
  sudo cp /vagrant/settingFile/repos/10gen.repo /etc/yum.repos.d/10gen.repo
fi

#subversion install
if ! [ `which subversion` ]; then
    sudo yum install subversion -y
fi

#install repos
if ! [ `which ansible` ]; then
    sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
    sudo rpm -ivh --force http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
    sudo rpm -ivh --force http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
    sudo rpm -ivh --force http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
    sudo rpm -ivh --force ftp://ftp.jaist.ac.jp/pub/mysql//Downloads/MySQL-5.6/MySQL-client-5.6.19-1.el6.i686.rpm
    sudo yum update
fi

#ansible-playbook  /vagrant/ansible/main.yml
