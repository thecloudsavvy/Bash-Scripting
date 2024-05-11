#!bin/bash

# UsersAllowed="allowed_inventory.txt"
# UsersNotAllowed="not_allowed_inventory.txt"

# config_file="config.txt"
# temp_config="temp_config.txt"

# if [[ -f $temp_config ]]
# then
#     rm $temp_config
# fi

# touch $temp_config

# string=""
# echo "AllowUserLogin=yes" >> $temp_config
# # text_add2="UserAllowed=root"
# cat_check="UserAllowed=root"
# while read -r line
# do
#     string+="$line,"
# done > $UsersAllowed
# echo "$cat_check,$string" >> $temp_config

# rm -f $config_file  
# mv $temp_config $config_file




# UsersAllowed="allowed_inventory.txt"
# UsersNotAllowed="not_allowed_inventory.txt"

# # Define the path for the main configuration file
# # 2. config file
# config_file="web.config"

# # Define the path for the temporary configuration file
# # 3. temporary config
# temp_config_file="temp_config"

# if [[ -f $temp_config_file ]]; then
#     rm -f $temp_config_file
# fi

# # Create and initialize the temporary config file with default value
# touch $temp_config_file
# string=""
# echo "AllowUsersLogin=yes" >>$temp_config_file
# # Process UsersAllowed
# cat_check="UsersAllowed=root"
# while read -r line
# do
#     current_line=echo "$line"
#     string+="$current_line,"
# done < $UsersAllowed
# echo "$cat_check,$string" >> $temp_config_file


#!/bin/bash
UsersAllowedInv="allowed_inventory.txt"
UsersNotAllowedInv="not_allowed_nventory.txt"

ConfigFile="web.config"

TempConfigFile="temp_web.config"

if [[ -f $TempConfigFile ]]
then
    rm -f $TempConfigFile
fi

touch $TempConfigFile

Allowed_Users_String=""

allowed_users_line=$( cat $ConfigFile | grep "UsersAllowed" )
if [[ $allowed_users_line ]]
then
        Allowed_users_String="$allowed_users_line,"
fi

while read -r line
do 
    Allowed_users_String+="$line,"
    
done < $UsersAllowedInv


while read -r config_line
do
    current_user_allowed=$(echo $Confi_line | grep "UsersAllowed")
    if [[ !$current_user_allowed ]]
    then
        echo $config_line >> $TempConfigFile
    fi
done < $ConfigFile

echo $Allowed_users_String >> $TempConfigFile