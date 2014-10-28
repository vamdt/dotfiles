#!/usr/bin/env bash

IMOUTO_HOSTS_URL="https://raw.githubusercontent.com/zxdrive/imouto.host/master/imouto.host.txt"
GOOGLE_HOSTS_URL="https://raw.githubusercontent.com/txthinking/google-hosts/master/hosts"
ORIGINAL_HOSTS_URL="https://raw.githubusercontent.com/vamdt/dotfiles/master/etc/original_hosts.txt"

random_file_name () {
  echo "/tmp/$(uuidgen)-$(date +%s).host.txt"
  return
}

cd $(dirname $0)

ORIGINAL_HOSTS=$(curl $ORIGINAL_HOSTS_URL)
IMOUTO_HOSTS=$(curl $IMOUTO_HOSTS_URL)
GOOGLE_HOSTS=$(curl $GOOGLE_HOSTS_URL)

# backup current /etc/hosts
sudo cp -f /etc/hosts /etc/hosts.orig

# final hosts, echo str to tmp file, prevent bash -c \argument too long error
final_hosts="$ORIGINAL_HOSTS\n\n$IMOUTO_HOSTS\n\n$GOOGLE_HOSTS"
# random tmp file name
tmp_host_file="$(random_file_name)"
# do not use echo, no format
printf "$final_hosts" > $tmp_host_file
# convert to unix format
dos2unix $tmp_host_file

# concat orignial host and new hosts. redirect to /etc/hosts
sudo bash -c "cat \"$tmp_host_file\" > /etc/hosts"

# clean 
rm -f $tmp_host_file

# exit with 0
exit
