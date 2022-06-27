#!/bin/bash

systemctl stop gdddns.timer
systemctl disable gdddns.timer

rm /etc/systemd/system/gdddns.timer
rm /etc/systemd/system/gdddns.service
rm /usr/local/bin/gdddns.sh

