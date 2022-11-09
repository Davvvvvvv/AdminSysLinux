
# TP 1 

*ssh -p 2222 tp@localhost*

## Exercice 2

### Manuel

Pour retrouver le chemin d'une commande en particulier, on peut utiliser la commande *which notre_commande*. 

Il nous arrive parfois de chercher dans un manuel une partie en particulier en utilisant la molette mais pour gagner du temps il nous suffit de taper */notre mot* et cela va surligner les mots correspondants dans notre page. Après avoir trouvé le mot que l'on recherchait, nous pouvons ainsi quitter notre manuel à l'aide de la touche *q*, abréviation de quit. 

Si vous êtes friand de jeux et que vous voulez connaître l'intégralité des jeux déjà présent sur notre système, on peut consulter la première page du manuel de la section 6.

### Navigation dans l'arborescence des fichiers

Pour cette partie je vais vous apprendre à maîtriser votre arborescence de fichier à l'aide de quelques commandes : 
    * **cd**, pour se déplacer de dossier en dossier 
        > *cd /dossier* qui va nous permettre de changer le répertoire courant par /dossier et d'ainsi nous déplacer
        > *cd ..*, qui va nous déplacer dans le dossier parent de notre répertoire courant
        > *cd -*, pour retourner dans le répertoire précédent
        > *cd  *, sans argument pour retourner au dossier personnel
        > *mkdir nom_du_dossier* pour créer un dossier
        > *mkdir -p nom_du_dossier_parent/sous_dossier* pour directement créer notre dossier et ses sous-dossiers
        > *touch nom_du_fichier* pour créer dans notre répertoire courant un nouveau fichier du nom spécifié
        > *rm chemin_du_fichier* pour supprimer notre fichier
        > *rmdir* pour supprimer un dossier qui se doit d'être vide
        > *rm -r nom_du_dossier* pour supprimer notre dossier et son contenu
        
        ❗ si vous essayez d'utiliser la commande *cd /votre_dossier* sans n'avoir les droits cela ne  marchera pas, par exemple vous ne pourrez pas de base accéder au dossier */root*.
        
🚩 Lorsque que l'on veut éxécuter un programme, de base restreint par certains droits on utilise la commande *sudo le_programme_executable*. Mais :exclamation: on ne peut l'utiliser avec des commandes déjà intégrées dans notre système comme *cd*.


### Commandes importantes

1. La commande *date* permet d'afficher la date et l'heure actuelle. Pour ce qui est de la commande *time* retourne des statistiques de temps écoulé pour l'éxécution d'un programme ce qui nous donne une idée des ressources utilisées. 
2. Les fichiers commençant par un point sont de base cachés de la vue de tous.
3. La commmande *ls* se situe dans le chemin */usr/bin/ls*. Nous l'obtenons en faisant la commande *which ls*.
4. Après recherches, la commande *ll* est un alias de la commande *ls -l*, qui permet d'afficher le long affichage détaillé de chaque fichier.
5. On effectue la commande *ls /bin* pour afficher l'ensemble des fichiers
6. La commande *ls ..* permet d'afficher les fichiers présents dans le répertoire parent.
7. La commande *pwd* affiche le chemin du dossier courant.
8. La première fois cela créer notre fichier *plop* et écris dedans le mot \*bip\*. La deuxième fois, notre fichier plop va être écraser pour laisser place à un nouveau fichier *plop* où va être encore écrit \*bip\*.
9. La première fois cela créer notre fichier *plop* et écris dedans le mot \*bip\*. La deuxième fois, nous allons nous placer à la fin de notre fichier pour y rajouter à nouveau le mot \*bip\*.
10. La commande *sleep 10 | echo 'toto'* va éxécuter en même temps les deux commandes, ainsi nous allons voir apparaître sur notre terminal le mot *toto* puis 10 secondes vont être attendus.
11. La commande *file* retourne le type du fichier entré en argument, par exemple pour notre fichier *plop* cela retourne *plop: ASCII text*.
12. Dans un premier temps, on fais la commande *echo 'Hello Toto !'> Original* pour créer notre fichier. On créer ensuite notre lien avec *ln Original lien_phy*, puis nous modifions notre fichier Original en rajoutant à la fin *Faut arrêter avec TOTO!* et qu'on regarde le contenu de lien phy avec *cat lien_phy*. Cela nous affiche bien notre fichier modifier. Après suppression du fichier *Original*, notre lien contient toujours en souvenir le contenu avant suppresion du fichier *Original*.
13. Après création du lien symbolique et de la mofication de notre *lien_phy*, *lien_sym* est lui aussi modifié. En faisant l'inverse, la même chose se produit et les deux liens sont bien modifiés. Mais après suppresion du lien *lien_phy* le lien symbolique *lien_sym* est lui aussi supprimé.
14. En faisant la commande *more /var/log/syslog* on utilise *Ctrl+s* pour bloquer le défilement et *Ctrl+q* pour reprendre le défilement.
15. Pour n'afficher que les 10 premières lignes on utilise *head -10 /var/log/syslog*, pour les 15 dernières on utilise *tail -15 /var/log/syslog* et pour finir de la 10 à la 20 ème ligne on utilise *sed -n '10,20p' /var/log/syslog*. 
16. La commande *dmesg | less* affiche les messages stockés dans le noyau sous un forme de page.
17. Le fichier */etc/passwd* contient des informations essentielles pour chaque compte compte comme l'emplacement du fichier contenant les identifiants. Pour accéder à la page manuel de ce fichier on fait la commande *man /etc/passwd*.
18. On utilise la commande *awk -F":" '{print $1}' /etc/passwd | sort -r* pour n'afficher que la première colonne triée dans le sens inverse.
19. On tape la commande getent qui affiche toutes les entrés contenues dans /etc/passwd et je les envoie à la commande wc pour compter le nombre de ligne : *getent passwd | wc -l*.
20. La commande *man -wK conversion|wc -l* nous permet de nous retourner l'ensemble des pages des manuels contenant un certain mot, dans notre cas conversion et de les compter.
21. Grâce à la commande *find / -name passwd|wc -l* on sait que 20 fichiers se nomment passwd sont présents sur la machine. Le */* correspond à l'ensemble des fichiers présents sur la machine.
22. En faisant cela : *find / -name passwd > list_passwd_files.txt* et *find / -name passwd 2> /dev/null* nos fichiers recherchés seront envoyés dans notre fichier list_paswd et nos erreurs dans *dev/null*.
23. L'alias ll est défini dans le fichier *.bashrc* que l'on trouve en effectuant la commande *grep -r "alias ll"*.
24. Le fichier history.log se trouve dans le chemin */var/log/apt/history.log*.
25. En faisant la commande locate, notre fichier ne ressort pas ainsi cela est dû car locate se base sur une base de donnée qui contient la liste de tous les fichiers et qui est répertorié que quotidiennement.

## Exercice 3

On utilise cp pour copier le fichier dans notre dossier personnel. Ensuite il nous suffit d'utiliser la commande *Ctrlk+\* pour pouvoir rechercher notre mot kernel et le remplacer par noyau. Pour déplacer nos 10 lignes, on selectionne tout simplement nos 10 lignes qu'on va couper et coller à la fin du fichier. Pour au final l'annuler avec *ALT + U* et ensuite l'enregistrer avec *CTRL+O* et *CTRLK+X*.

## Exercice 4

Après avoir créer notre backup on modifer nore fichier bashrc et on recherche notre ligne avec *CTRLK + W* et on décommente la ligne. Puis, en rechargeant le shell avec *source .bashrc* notre shell est maintenant coloré.

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;92m\]\u@\h\[\033[00m\]:\[\033[01;96m\]\w\[\033[00m\]\$ '

~finir la question avec l'invite de commande~ 



