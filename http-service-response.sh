#! /bin/bash
#
# Script Name:   http-service-response.sh 
# Description:   Exemplo de script que verifica se um recurso http está respondendo o código 200
# Github:        https://github.com/EmersonMorgado
# Linkedin:      www.linkedin.com/in/emerson-morgado-18566129/
# Written by:    Emerson Morgado
#
# -----------------------------------------------------------------# 

RECURSO='localhost/'

COD_HTTP=$(curl --write-out %{http_code} --silent --output /dev/null $RECURSO)

if [ $COD_HTTP -ne 200 ]; then
    echo ERRO $COD_HTTP - $(date +%F\ %T) - Falha serviço http://$RECURSO 
    #   Fazer alguma coisa se houver um erro, como reiniciar o serviço
else
    echo $COD_HTTP OK - $(date +%F\ %T) - http://$RECURSO
fi
