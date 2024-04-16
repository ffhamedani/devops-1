#!/bin/bash

#Script to create LVM
#Author: Reihani Farahani

#make log
now(){
    date "+%Y-%m-%d--%H:%M:%S"
}

log(){
    echo -e "`now` $@"
}

# Necessary Function  (Create physical volume, create volume group, logical volume)
create_pv(){
        pv_create $loc
        log "p_volume created"

        read -p "Group name: " vg_name
       create_vg
    
}

create_vg(){

        vgcreate $vg_name $loc #from above
        log "volume group created"
      
        read -p "volume name: " lv_name
        read -p "volume size (in Gb): " lv_size
        create_lv
    
}

create_lv(){
   
        lvcreate --name $lv_name --size "$lv_size"G $vg_name #from above
        log "logical volume created"
    
}

#Start Script
#Get Location of volume
read -p "physical volume location? " loc

create_pv