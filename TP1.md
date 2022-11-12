
# TP 1 

## Exercice 1

`ssh -p 2222 tp@localhost`

## Exercice 2

### Manuel

Pour retrouver le chemin d'une commande en particulier, on peut utiliser la commande *which notre_commande*. 

Il nous arrive parfois de chercher dans un manuel une partie en particulier en utilisant la molette mais pour gagner du temps il nous suffit de taper `/notre mot` et cela va surligner les mots correspondants dans notre page. 

Après avoir trouvé le mot que l'on recherchait, nous pouvons ainsi quitter notre manuel à l'aide de la touche _*q*_, abréviation de quit. 

Si vous êtes friand de jeux et que vous voulez connaître l'intégralité des jeux déjà présent sur notre système, on peut consulter la première page du manuel de la section 6.

### Navigation dans l'arborescence des fichiers

Pour cette partie je vais vous apprendre à maîtriser votre arborescence de fichier à l'aide de quelques commandes:
   * `cd`, pour se déplacer de dossier en dossier 
   * `cd /dossier` qui va nous permettre de changer le répertoire courant par /dossier et d'ainsi nous déplacer
   * `cd ..`, qui va nous déplacer dans le dossier parent de notre répertoire courant
   * `cd -`, pour retourner dans le répertoire précédent
   * `cd  `, sans argument pour retourner au dossier personnel
   * `mkdir nom_du_dossier` pour créer un dossier
   * `mkdir -p nom_du_dossier_parent/sous_dossier` pour directement créer notre dossier et ses sous-dossiers
   * `touch nom_du_fichier` pour créer dans notre répertoire courant un nouveau fichier du nom spécifié
   * `rm chemin_du_fichier` pour supprimer notre fichier
   * `rmdir` pour supprimer un dossier qui se doit d'être vide
   * `rm -r nom_du_dossier` pour supprimer notre dossier et son contenu
        
❗ Si vous essayez d'utiliser la commande `cd /votre_dossier` sans n'avoir les droits cela ne marchera pas, par exemple vous ne pourrez pas de base accéder au dossier `/root`.
        
🚩 Lorsque que l'on veut éxécuter un programme, de base restreint par certains droits on utilise la commande `sudo le_programme_executable` mais ❗ on ne peut l'utiliser avec des commandes déjà intégrées dans notre système comme `cd`.


### Commandes importantes

Les commandes qui vont nous être utiles dans cette partie sont les suivantes: 
   * `date` nous retourne la date et l'heure actuelle
   * `time` renvoie le temps écoulé pour l'éxécution d'un programme
   * `ls répertoire` pour afficher les fichiers présents dans un répertoire
      * `ls ..` affiche les fichiers du répertoire parent
   * `pwd` pour afficher le chemin du dossier courant
   * `file fichier` retourne le type du fichier entré en argument
   * `ln fichier nom_du_lien` qui va créer un lien physique à notre fichier 
   * `ln -s fichier nom_du_lien` qui va créer un lien symbolique à notre fichier 
   * `head -nombre_de_ligne chemin_du_fichier` pour afficher les x premières lignes d'un fichier
   * `tail -nombre_de_ligne chemin_du_fichier` pour afficher les x dernières lignes d'un fichier
   * `dmesg` affiche les messages stockés dans le noyau 
   * `less` permet de visualiser un fichier texte page par page
   * `man nom_page` pour accéder à la page du manuel en question
   * `getent` pour voir tous les comptes utilisateurs 
   * `wc -l` compte le nombre de ligne d'un fichier donné en entré
   * `find repertoire_dans_lequel_on_fais_notre_recherche -mot_a_trouve` qui nous retourne tous les fichiers ayant comme nom le mot recherché dans le répertoire passé en entrée
   * `grep "chaine"` recherche une chaine de caractères dans un fichier
   * `locate fichier` recherche dans sa base de donnée (actualisé chaque jour automatiquement), l'emplacement de notre fichier
   
### 🚩 A Savoir
   
   Un lien physique est une copie qui continue d'existe même après la suppresion de notre fichier alors qu'un lien symbolique est en quelque sorte un pointeur vers notre fichier. 
   
   Ainsi, si cette fois on décide de supprimer notre fichier, ce lien pointera vers un fichier inexistant.
   
   Un fichier précédé par un `.` signifie qu'il n'est pas de base visible de tous.
   
   Le fichier `/etc/passwd` contient des informations essentielles pour chaque compte compte comme l'emplacement du fichier contenant les identifiants
   
### 💡 Astuces 
   
   Pour créer un fichier à partir d'une phrase on peut faire *echo 'notre_phrase' > nom_du_fichier*.
   
   Le chevron fermant `>` nous permet de dirigier le résultat de notre commande à gauche vers notre fichier passé en argument mais ❗ cela écrase le contenu du fichier si celui-ci n'était pas vide.
   
   Pour envoyer la sortie d'erreur dans un fichier on utilise *2> fichier_cible*.
   
   On peut aussi avec le pipe `|` traiter de manières séquentielles plusieurs commandes et envoyer le résultat de sortie d'un programme à l'entrée d'une autre.
   Exemple : `sleep 10 | echo 'toto'`
   
### 📝 Raccourcis utiles
   
   * _Ctrl + s_ pour bloquer le défilement lors de la consultation d'un fichier
   * A l'inverse _Ctrl + q_ pour reprendre le défilement 

### 💬 Exemple de commande
   
   * `awk -F":" '{print $1}' /etc/passwd | sort -r` pour n'afficher que la première colonne triée dans le sens inverse.
   * `man -wK mot_recherché|wc -l` nous permet de nous retourner l'ensemble des pages des manuels contenant un certain mot, dans notre cas conversion et de les compter.
   

## Exercice 3

On utilise cp pour copier le fichier dans notre dossier personnel. Ensuite il nous suffit d'utiliser la commande *Ctrlk+\* pour pouvoir rechercher notre mot kernel et le remplacer par noyau. 

Pour déplacer nos 10 lignes, on selectionne tout simplement nos 10 lignes qu'on va couper et coller à la fin du fichier. Pour au final l'annuler avec _ALT + U_ et ensuite l'enregistrer avec _CTRL+O_ et _CTRLK+X_.

## Exercice 4

Après avoir créer notre backup on modife notre fichier bashrc et on recherche notre ligne avec _CTRLK + W_ et on décommente la ligne. 

Puis, en rechargeant le shell avec `source .bashrc` notre shell est maintenant coloré.

`PS1='${debian_chroot:+($debian_chroot)}\[\033[01;92m\]\u@\h\[\033[00m\]:\[\033[01;96m\]\w\[\033[00m\]\$ '`

~finir la question avec l'invite de commande~ 



