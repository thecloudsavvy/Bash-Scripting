#!/bin/bash

## set the variable
name="devtbrand"
age=23
city="lagos"
dob=2000


### display the variable
echo "devtbrand: $name"
echo "age: $age"
echo "city: $city"
echo "dob: $dob"

### perform greeting with variables
greeting="hello, $name! you lived at $city and likely born in $dob -year"
echo "$greeting"




age=12

if [[ $age -eq 12 ]]

then
    echo "positive"
else    
    echo "this is the wrong user"

fi        

 !/bin/bash

while read line
do

    current_line=$(echo $line)
    new_line=$( echo $line | cut -d: -f1)
    if [[ $new_line == "jame" ]]
    then
        echo "present"
    fi

done < "user.txt" 


# !/bin/bash

# while loop   - performs tasks over and over again until a particular task is reach

var=1

while [ $var -le 10 ]
do  
    echo $var
    if [[ $var == 5 ]]
    then
        break
    fi
    var=$(( $var + 1 )) 
    sleep 0.5
    # myvar=$(( $myvar +1 ))
    
done      


# array

declare -a users

users=("james" "john jacob" "jerry" "abigail" "andrew")

for user in "${users[@]}"
do  
    echo $user
done




user=("james" "sola" "bimpe" "jake")
echo "${user[@]}"
for names in "${user[@]}"
do  
    echo $names
    sleep 0.5
done


# to get the last items of array
echo 

user=("tunde" "${user[@]}")
echo "${user[@]}"
sleep 0.5

user=("${user[@]}" "tunde")
# echo "${user[@]}"
for names in ${user[@]}


