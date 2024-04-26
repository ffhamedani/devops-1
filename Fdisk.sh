#!/bin/bash

#Script to create Fdisk
#Author: Reihani Farahani

#make log
now(){
    date "+%Y-%m-%d--%H:%M:%S"
}

log(){
    echo -e "`now` $@"
}

# Get necessary Data from User 

read -p " Disk location? " loc
read -p " Partition size (in Gb)?  " size


if [ -b "$loc" ]; then
    echo -e "n\n\n\n\n+${size}Gb\nw\nq" | fdisk "$loc"

else
    log "Disk $loc doesn't exist!"
fi
    
