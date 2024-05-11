#!/bin/bash

firstname_lastname(){
    file="inventory.txt"
    while read -r line
    do      
        firstname=$(echo $line | cut -d"&" -f1)
        # first=$(echo $firstname | cut -d= -f1)
        # name1=$(echo $firstname | cut -d= -f2)
        lastname=$(echo $line | cut -d"&" -f3)
        # name2=$(echo $lastname | cut -d= -f2)
        # echo "Firstname="$name1
        echo $firstname
        echo $lastname

    done < $file    

}

firstname_lastname

# last_name(){
#     file="inventory.txt"
#     while read -r line
#     do      
#         lastname=$(echo $line | cut -d"&" -f3)
#         last=$(echo $lastname | cut -d= -f1)
#         name=$(echo $lastname | cut -d= -f2)
#         echo $last:$name
#         # echo $lastname
#     done < $file

# }

# last_name

# echo $first_name:$last_name
