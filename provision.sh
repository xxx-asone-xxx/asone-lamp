#!/usr/bin/env bash

if ! [ `which ansible` ]; then
    sudo rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
    sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
    sudo rpm -ivh http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
    sudo rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
    sudo rpm -ivh http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm

    sudo cp /vagrant/settingFile/10gen.repo /etc/yum.repos.d/10gen.repo
    sudo yum update
    sudo yum install ansible -y
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml
