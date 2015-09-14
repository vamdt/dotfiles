#!/usr/bin/env bash

usage() {
    printf 'go-update.sh go$VERSION.$OS-$ARCH.tar.gz\n'
    exit 1
}
[ -z "$1" ] && usage

go_pkg_name="$1"

cd $(dirname $0)
printf "Download go package...\n"
wget -P /tmp "https://storage.googleapis.com/golang/$go_pkg_name"
#cp ~/temp/go1.5.1.linux-amd64.tar.gz /tmp
printf "Delete old go dir: /usr/local/go \n"
sudo rm -rf /usr/local/go
printf "Extract go packaget to /usr/local \n"
sudo tar -C /usr/local -xzf "/tmp/$go_pkg_name"
printf "Done \n"
go version
exit 0
