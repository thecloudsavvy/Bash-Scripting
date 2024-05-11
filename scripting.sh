#!/bin/bash

# file="inventory.txt"
# temp_file="temp_inventory.txt"

# if [[ -f $temp_file ]]
# then
#     rm $temp_file
# fi

# touch $temp_file

# while read -r line
# do
#     current_line=$( echo $line | grep allowtouchid ) 
#     if [ $current_line ]
#     then
#         echo "allowtouchid=yes" >> $temp_file
#     else
#         echo $line >> $temp_file
#     fi
# done < $file

# rm $file
# mv $temp_file $file

# declare -a collection

# collection=("sola" "tunde" "bimbe")

# for n in collection
# do 
#     echo ${#collection[n]}
# done

# echo ${#collection[@]}

# unset $collection[sola]
# echo ${collection[@]}
# collection+=("james")

# collection=("james" ${collection[@]})
# echo ${collection[@]}

# for users in ${collection[@]}
# do  
#     if [ $users == "bimbe" ]
#     then    
#         echo "user found"
#     else    
#         echo "moved further"
#     fi
# done

# count=1

# while [[ $count -lt 3 ]]
# do  
#     echo $count
#     count=$( expr $count + 1 )
   

# done



file="inventory.csv"
temp_inventory="temp_file.csv"

if [ -f $temp_inventory ]
then
    rm $temp_inventory
fi

touch $temp_inventory

while read -r line
do
    header=$(echo $line | grep firstname,lastname,email,username,scores)
    if [ ! $header ]
    then
        firstname=$(echo $line | cut -d"," -f1)
        lastname=$(echo $line | cut -d"," -f2)
        email=$(echo $line | cut -d"," -f3)
        username=$(echo $line | cut -d"," -f4)
        scores=$(echo $line | cut -d"," -f5)
        echo $email
    fi
done < $file