#!/bin/bash
green='\e[32m'
red='\e[31m'
clear='\e[0m'
users_file="/etc/passwd"
users_number=`wc -l $users_file | awk '{print $1;}'`
prompt="${green}List of all ${red}$users_number ${green}users from $users_file :${clear}"
echo -e $prompt
cat -n $users_file | awk -F : '{print $1}'
