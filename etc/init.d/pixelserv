#! /bin/sh
# /etc/init.d/pixelserv
#
# Carry out specific functions when asked to by the system
case "$1" in
start)
echo "Starting pixelserv "
/usr/local/bin/pixelserv &
;;
stop)
echo "Stopping script pixelserv"
killall pixelserv
;;
*)
echo "Usage: /etc/init.d/pixelserv {start|stop}"
exit 1
;;
esac

exit 0
