#! /bin/bash

cd $(dirname $0)
git pull -q || git clone https://github.com/zapret-info/z-i.git .

cat dump.csv | cut -f1 -d\; |  grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | sort | uniq  > blacklist.txt
dig +short -f my-blacklist >> blacklist.txt
ipset flush blacklist
cat  blacklist.txt | xargs -n1 ipset add blacklist
