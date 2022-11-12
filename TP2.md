# TP2 - Bash

## Exercice 1. Variables d'environnement

### 📝 Commandes utiles

   *printenv* pour afficher toutes les variables d'environnements
   *echo $ma_variable* pour afficher le contenu de notre variable locale
   *bash* pour entrer dans un script bash sans quitter notre terminal (*exit* pour terminer notre script)
  
### Fonctionnement des scripts bash

Tout d'abord à quoi ça sert? 

Tout simplement à éxécuter des tâches répétitives en un seul appel de fonction.

Nous allons pour appeler notre script utiliser *./mon_script.sh mon_parametre*. 
En écrivant cela, nous allons appeler notre script bash en lui passant un parmètre qu'il va pouvoir utiliser avec *$1*.


### 💡 A savoir

Bash trouve les commandes tapées par l'utilisateur dans les dossier *usr* et *snap*. 
Pour retrouver ces infos il suffit de taper la commande *printenv PATH*.

Dans nos scripts bash nous n'aurons accès qu'au variables d'environnements et les paramètres passés à notre script.

### 🚩 Roles de quelques variables d'environnements

_LANG_ = langue du système
_PWD_ = emplacement actuel
_OLPWD_ = ancien emplacement (utilisé lors de la commande *cd -*)
_SHELL_ = emplacement du shell du système (bash dans notre cas)

