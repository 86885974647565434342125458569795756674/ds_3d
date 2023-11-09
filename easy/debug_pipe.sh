#!/bin/bash

echo $1 $2

cat $2 &
while [[ 1 ]]; do
    read -e cmd
    echo $cmd
    echo $cmd>$1
done

# read -e cmd
# echo $cmd > $1
# read -e cmd
# echo $cmd > $1
# read -e cmd
# echo $cmd > $1