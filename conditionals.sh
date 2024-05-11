# declare -a users
users=("james:password1" "john:password2" "jerry:password3")

sudo su
    
for item in ${users[@]}
do 
    # item=$(echo $users)
    user=$(echo "$item" | cut -d: -f1)
    password=$(echo "$item" | cut -d: -f2)

    user_home="/home/$user"

    [ -d "$user_home" ] || sudo mkdir -m 700 "$user_home"

    sudo useradd -d "$user_home" -m -s "/bin/bash" "$user"

    echo "$user:$password" | sudo chpasswd

done 
exit




declare -a users
users=("james:password1:2001:others" "john:password2:2002:others" "jerry:password3:2003:support" "joseph:password4:2004:support")

sudo su
    
sudo groupadd others
sudo groupadd support

# sudo usermod -aG others james,john
# sudo usermod -aG support jerry,joseph

for item in ${users[@]}
do 
    # item=$(echo $users)
    user=$(echo "$item" | cut -d: -f1)
    password=$(echo "$item" | cut -d: -f2)
    user_id=$(echo "$item" | cut -d: -f3)
    group=$(echo "$item" | cut -d: -f4)

    user_home="/home/$user"

    # sudo mkdir $user_home
    [ -d "$user_home" ] || sudo mkdir -m 700 "$user_home"

    sudo useradd -u "$user_id" -d "$user_home" -m -s "/bin/bash" "$user"

    echo "$user:$password" | sudo chpasswd

    sudo usermod -aG "$group" "$user"

done 
exit



read -p "Enter your age : " age

echo "$age"

if [[ $age -le 12 ]]
then

    echo "child"

elif [[ $age -le 19 ]]
then

    echo "Teenager"
    
elif [[ $age -ge 20 ]]
then

    echo "Adult"

fi




!/bin/bash

echo "Enter your age: "
read age

message=""

if [ $age -ge 0 ] && [ $age -le 12 ]; then
    message="You are a child."
fi

if [ $age -ge 13 ] && [ $age -le 19 ]; then
    message="You are a Teenager."
fi

if [ $age -ge 20 ]; then
    message="You are an adult."
fi



# #!/bin/bash

declare -a users

users=("james:password1:2001:others" "john:password2:2002:others" "jerry:password3:2003:support" "joseph:password4:2004:support")

sudo su
    
sudo groupadd others
sudo groupadd support

# sudo usermod -aG others james,john
# sudo usermod -aG support jerry,joseph

for item in ${users[@]}
do 
    # item=$(echo $users)
    user=$(echo "$item" | cut -d: -f1)
    password=$(echo "$item" | cut -d: -f2)
    user_id=$(echo "$item" | cut -d: -f3)
    group=$(echo "$item" | cut -d: -f4)

    user_home="/home/$user"

    # sudo mkdir $user_home
    [ -d "$user_home" ] || sudo mkdir -m 700 "$user_home"

    sudo useradd -u "$user_id" -d "$user_home" -m -s "/bin/bash" "$user"

    echo "$user:$password" | sudo chpasswd

    sudo usermod -aG "$group" "$user"



file="/etc/ssh/sshd_config"

new_file=new_config

if [[ -f $new_file ]]
then
    rm -f $new_file
fi
    touch new_config

while read line
do
pass=$( echo $line | grep "PasswordAuthentication no")
    if [[ $pass ]]
    then
        echo "PasswordAuthentication Yes">>$new_file
    else
        echo $line>>$new_file
    fi
done < $file

rm -f $file
mv $new_file $file



done 
exit