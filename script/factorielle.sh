#!/bin/bash

factorielle(){
    if [ $1 -le 1 ]; then
        echo 1
    else
        echo $(($1* $(factorielle $(($1-1)))))
    fi
}

if [ "$#" -eq 1 ]; then
    factorielle $1
fi