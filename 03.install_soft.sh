#!/bin/bash
touch /etc/sysconfig/iptables
touch /etc/sysconfig/iptables6
systemctl start iptables
systemctl start ip6tables
systemctl enable iptables
systemctl enable ip6tables

cur_dir=$(pwd)
cd /opt/csf/
sh install.sh 
cd $cur_dir


