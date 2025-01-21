#!/bin/bash
green='\e[32m'
clear='\e[0m'
users_file="/etc/passwd"
users_cli="/bin/bash"
prompt="${green}List of all users from $users_file file with $users_cli shell:${clear}"
echo -e $prompt
cat $users_file | grep $users_cli
