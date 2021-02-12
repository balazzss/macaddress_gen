#!/bin/sh

MACADDR0="$(dd if=/dev/urandom bs=512 count=1 2>/dev/null | md5sum | sed 's/^\(..\)\(..\)\(..\)\(..\)\(..\)\(..\).*$/\1:\2:\3:\4:\5:\6/')"
MACADDR1="34:$(dd if=/dev/urandom bs=512 count=1 2>/dev/null | md5sum | sed 's/^\(..\)\(..\)\(..\)\(..\)\(..\).*$/\1:\2:\3:\4:\5/')"
MACADDR2="34:7d:$(dd if=/dev/urandom bs=512 count=1 2>/dev/null | md5sum | sed 's/^\(..\)\(..\)\(..\)\(..\).*$/\1:\2:\3:\4/')"
MACADDR3="34:7d:b1:$(dd if=/dev/urandom bs=512 count=1 2>/dev/null | md5sum | sed 's/^\(..\)\(..\)\(..\).*$/\1:\2:\3/')"
MACADDR4="34:7d:b1:54:$(dd if=/dev/urandom bs=512 count=1 2>/dev/null | md5sum | sed 's/^\(..\)\(..\).*$/\1:\2/')"

echo "MAC entièrement àléatoires : $MACADDR0"
echo "MAS avec 2 valeurs fixes   : $MACADDR1"
echo "MAC avec 4 valeurs fixes   : $MACADDR2"
echo "MAC avec 6 valeurs fixes   : $MACADDR3"
echo "MAC avec 8 valeurs fixes   : $MACADDR4"
