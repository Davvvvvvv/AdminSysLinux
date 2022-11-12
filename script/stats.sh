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
somme=0
min=$1
max=$1

if is_number $1 -a $? -le 100 -a $? -ge -100;then
    echo "zz"
fi
#for param in $*; Question 1.
#do
#    is_number $param -a $? -le 100 -a $? -ge -100;then
#        if [ $param -lt $min ];then
#            min=$param
#        fi
#        if [ $param -gt $max ];then
#            max=$param
#        fi
#        somme=$(($somme+$param))
#    fi
#done

#while (("$#")); # Question 2.
#do
#    if is_number $1 -a $? -le 100 -a $? -ge -100;then
#        if [ $1 -lt $min ];then
#            min=$1
#        fi
#        if [ $1 -gt $max ];then
#            max=$1
#        fi
#        somme=$(($somme+$1))
#    fi
#    shift
#done
#tableau[${#tableau[*]}]=couleurs

echo -e "Le minimum est $min\nLe maximum est $max\nLa moyenne est : "$(( $somme / 3 ))


