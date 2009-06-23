#!/bin/sh

wget $2
FNAME=`basename $2`

while getopts p:a: OPT; do
    case "$OPT" in
        p) zprint.sh -u anish -p appa-duplex $FNAME
        ;;
        a) zprint.sh -u abhatt6 -r acme $FNAME
        ;;
        *) # default case
        echo $USAGE >&2
        exit 1
        ;;
    esac
done

rm $FNAME
