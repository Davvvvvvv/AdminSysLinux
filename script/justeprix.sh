#!/bin/bash

read -p "Entrez un nombre : " nombre
rd=$(( $RANDOM %1000 + 1 ))

while [ $rd -ne $nombre ]
do
    if [ $rd -lt $nombre ];then
        echo "Moins"
    else
        echo "Plus"
    fi
    read -p "Entrez un nouveau nombre : " nombre
done
echo "Trouvé"
