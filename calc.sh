#!/bin/sh

NUM1=$(bc < $1)
NUM2=$(bc < $2)
if (($NUM1>$NUM2));
then
echo $NUM1
else
echo $NUM2
fi
