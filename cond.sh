# #!/bin/bash

# ## create variables
# ## Define the paths for inventory files
# # 1. inventory files
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
#     string+="$line,"
# done < $UsersAllowed
# echo "$cat_check,$string" >> $temp_config_file

# # Process UsersNotAllowed
# cat_check="UsersNotAllowed="
# string=""
# while read -r line
# do
#     string+="$line,"
# done < $UsersNotAllowed
# echo "$cat_check,$string" >> $temp_config_file


# # Remove the existing config file and replace it with the updated one
# rm -f $config_file  
# mv $temp_config_file $config_file




# case 2

#!/bin/bash
UsersAllowedInv="allowed_inventory.txt"
UsersNotAllowedInv="not_allowed_inventory.txt"

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

# echo $Allowed_users_String




Not_Allowed_Users_String=""

not_allowed_users_line=$( cat $ConfigFile | grep "UsersNotAllowed" )

if [[ $not_allowed_users_line ]]
    then
        Not_Allowed_Users_String="$not_allowed_users_line"
fi



while read -r line
do 
    Not_Allowed_Users_String+="$line,"
    
done < $UsersNotAllowedInv

# echo $Not_Allowed_Users_String



Not_allowed_String=""

# users_allowed_current_config_line=$(cat $ConfigFile | grep "UsersAllowed")
# users_not_allowed_current_config_line=$(cat $ConfigFile | grep "UsersNotAllowed")

## loop through the config file again
while read -r line
do
    users_allowed_current_config_line=$(echo $line | grep "UsersAllowed")
    users_not_allowed_current_config_line=$(echo $line | grep "UsersNotAllowed")

    if [[ ! $users_allowed_current_config_line && ! $users_not_allowed_current_config_line ]]
    then
        echo $line >> $TempConfigFile
    fi
    

done < $ConfigFile


## write the remaining to temp file
echo $Not_Allowed_Users_String >> $TempConfigFile
echo $Allowed_users_String >> $TempConfigFile