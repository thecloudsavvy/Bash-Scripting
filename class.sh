#!/bin/bash

read -p "what is your name: " name
read -s -p "what is your last_name: " last_name
echo ""


if [[ $name == "james" && $last_name == "shola" ]]
then
    echo "welcome user"
else
    echo "you're not welcome"

fi