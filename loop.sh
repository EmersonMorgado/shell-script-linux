#! /bin/bash
#
# Script Name:   loop.sh 
# Description:   exemplo de utilização de loop com script
# Github:        https://github.com/EmersonMorgado
# Linkedin:      www.linkedin.com/in/emerson-morgado-18566129/
# Written by:    Emerson Morgado
#
# -----------------------------------------------------------------# 
TIME=1
for user in `ls /home/`
    do
      echo "Os usuários são: $user"
      sleep $TIME
done

