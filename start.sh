#!/bin/bash
 
users=(
    "simos" "123"
    "simos1" "123"
)
 
uLen=${#users[@]}

for (( counter=0; counter<$uLen; counter+=2 )); do
    name=${users[$counter]}
    password=${users[$counter+1]} 
      
    useradd -m -p $(openssl passwd -1 $password) $name
done 
 
jupyterhub