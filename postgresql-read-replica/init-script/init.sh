#!/bin/bash
set -e

sh /etc/postgresql/init-script/create-replica-user.sh
sh /etc/postgresql/init-script/backup-main.sh
sh /etc/postgresql/init-script/init-replica.sh
