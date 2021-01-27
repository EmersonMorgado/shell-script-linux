#! /bin/bash
#
# Script Name:   if-else.sh 
# Description:   exemplo de utilização de if else com script
# Github:        https://github.com/EmersonMorgado
# Linkedin:      www.linkedin.com/in/emerson-morgado-18566129/
# Written by:    Emerson Morgado
#
# -----------------------------------------------------------------# 
clear
echo -n "Entre com um arquivo ou diretório existente do sistema: "
read dir
if [ -d $dir ]
then
        echo Isso é um diretório!
        echo Esse $dir tem um tamanho de: `du -sh $dir`
else
        echo Isso não é um diretório
fi
