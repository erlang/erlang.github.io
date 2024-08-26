#! /bin/sh
echo 'argv[0]:|'$0'|'
i=1
while [ '!' -z "$1" ]; do
    echo 'argv['$i']:|'"$1"'|'
    shift
    i=`expr $i + 1`
done
