#!/bin/bash

function is_number
{
    re='^[+-]?[0-9]+([.][0-9]+)?$'
    if  ! [[ $1 =~ $re ]] ; then
        echo "Erreur"
        return 1
    else
        return 0
    fi
}

is_number $1
