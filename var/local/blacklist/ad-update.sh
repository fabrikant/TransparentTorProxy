#! /bin/bash

cd /etc/bind/
curl "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=bindconfig&showintro=0&mimetype=plaintext" | sed 's/null.zone.file/\/etc\/bind\/db.adzone/g' > named.ad.conf
rndc reload
