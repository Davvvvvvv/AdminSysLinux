#!/bin/bash

ma_fonction(){
	local mdp="1234"
	read -p "Saisir votre mot de passe : " pwd

	if [ "$pwd" = "$mdp" ]; then
	echo "Mot de passe correct"
	else
	echo "Mot de passe  incorrect"
	fi
}
ma_fonction


