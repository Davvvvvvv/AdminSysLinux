#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Utilisation $0 nom_utilisateur"
else
    if getent passwd $1 > /dev/null 2>&1; then
        echo "L'utilisateur existe bien"
    else
        echo "L'utilisateur n'existe pas"
    fi
fi
