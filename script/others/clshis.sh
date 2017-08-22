#!/bin/sh

echo > /var/log/wtmp
echo > /var/log/btmp
echo > /var/run/utmp
echo > ~/.bash_history
echo > ~/.mysql_history
history -c
