#!/bin/sh

/etc/osmud/remove_ip_fw_rule.sh -i 192.168.7.169 -m b8:27:eb:9d:df:f1
echo $?
/etc/osmud/commit_ip_fw_rules.sh
echo $?

/etc/osmud/remove_ip_fw_rule.sh -i 192.168.7.149 -m d4:6d:6d:a5:c7:29
echo $?
/etc/osmud/commit_ip_fw_rules.sh
echo $?

rm /var/state/osmud/mudfiles/*
echo $?

exit 0
