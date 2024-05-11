#!/bin/bash

### for loop - allows you to perform an items repeated in a set

for n in {1..10}
do
    echo $n
    sleep 0.5
done

echo "the is outside of the loop."


#!/bin/bash
## to compress everyfile in logfile folder


for file in logfile/*.log
do  
    tar -czvf $file.tar.gz $file
done
 

# !/bin/bash

# ## while loop   - performs tasks over and over again until a particular task is reach
myvar=1

while [ $myvar -le 10 ]
do  
    echo $myvar
    myvar=$(( $myvar +1))
    sleep 0.5
done    


while [ -f ~/testfile ]
do
    echo "as of $(date): the test file exits."
done


#!/bin/bash
### if statements - perform an actions once for every set of condition evaluate as true

release_file=/etc/os-release

if grep -q "arch" $release_file
then
    # the host is based on arch, run the pacman update command
    sudo pacman -Syu
fi

if grep -q "debian" $release_file || "ubuntu" $release_file
then    
    #the host is based on debian or ubuntu,
    #run the apt version of the command
    sudo apt update && sudo apt dist-upgrade -y 
fi  

!/bin/bash
while read line
do 
     current_line=$(echo $line)
    if [ $current_line == "jame" ]
    then    
        echo "user matched"
    fi
done < "user.txt"


!/bin/bash
while read line
do 
    current_line=$(echo $line)
    first_field=$(echo $current_line | cut -d: -f1)
    if [[ $first_field == "jame" ]]
    then    
        echo "user matched"
    fi
done < "user.txt"


num=1

while [ $num -lt 10 ]
do 
    echo $num

    if [[ $num == 5 ]]
    then
        break
fi
    num=$(( $num + 1 ))
done


# array

declare -a users

users=("james" "john jacob" "jerry" "abigail" "andrew")

for user in "${users[@]}"
do  
    echo $user
done

users=("mary" "${users[@]}")
echo "${users[@]}"

users+=("matt dave")


echo "${#users[@]}"

for i in "${user[@]}"
do 
    echo $i
done


#!/bin/bash
read -p "what is your age ? "age
echo "$age"

  