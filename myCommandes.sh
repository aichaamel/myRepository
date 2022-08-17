// installation du git//  sudo apt install git
//obtenir la version du git//     git --version
// configurer git user name// git config --global user.name "nom,prenom"
//configurer email// git config --global user.email"email"
//definir var system// sudo git config --system core.editor vim 
//cd pour savoir quand dans l espace utulisateur// cd-
// pour triuver le fichier configurer // nano .gitconfig
//modifier parametre system// git config --system
//modification specifique pour le depot// git config--local
//help de git // git --help 
//nettoyer// clear
// add file content to the endx// git-add
//deux type de commandes // cm de porcelane controle complet de git , cm de plomberie pour manipuler deirectement les commandes 
** créer un dépot local**
 //afficher un fichier// cd/nomdefichier/ ... cd/demo/ ..ll(pour afficher le contenu du dosier)
//changer le proprietere du dossier// sudo chown nom ../nomdedossier/ 
//initialiser un dossier git// git init
/configuration au niveau local// cd .git
// remmetre a nouveau // cd ..
** ajouter des fichiers**
// connaitre le statu du depot git// git status
// ajouter un text a un fichier // nano test.text
//pour le fichier part du repertoire a (nom du document)// git add test.txt
//pour desindexer le fichier// git rm --cached (nom de fichier)
// lister les fichiers non suivi par le system git// git ls-files --others --exclude-standard
//ajouter tous les fichier de travail qui sont pas indexer// git ad -A A(all)
**creer son premier comit**(ensemble de modification)de l index au depot
//pour comiter// git commit -m "msg"
// voir les derniers commit// git log
// dernier commit// git log-1
// pour commiter une nouvelle modification// git add nom de commit
//on nous renvoit vers un editeur de texte ou on peux ecrire un commit// git commit -a
**rediger un bon message de commit**
// :wq pour enregistrer apres la modification dans l editeur du texte//
//on affiche uniquement le sujet du commit// git log --oneline
//affiche le sujet et l autheur du commit // git shortlog
** integrer les sources existants**
** deplacer ou renommer un fichier**
//renomer un fichier// git mv le dernier le nouveau
//desindexer// git reset head "nom"
**supprimer un fichier**
// supprimer du repertoire du travail et lindex// git rm nom
//la meme// rm nom , git add nom : c la meme que git rm nom
** arreter de suivre un fichier**
// ne plus suivre un fichier// git rm --cached nom 
**ignorer un fichier**
//laisser dans le repertoire mais pas envoyer dans depot git// vim .gitignore vim(editeur de texte)
# commentaire , * tous , exmpl image /image/logo.png
** consulter l historique**
// tous les mof// git log , q pour sortir 
//contenu du dernier commit..// git log -1
//uniquement les sujet// git log --oneline
//deux dernier ou trois dernier commit ...// git log --oneline -2 -3 
//filtrer par auteur// git log --author "nom de l auteur"
//filtrer par date// git log --before="date"
//filtrer par date // git log --after="date"
//filtrer par date// git log --since 12344.day ...
// filtrer pour un seul fichier // git log nom (d autre parametre si on veut )
** parcourir les differences dans l histo**
//analyser les differences// git diff
//analyser les differences entre l index et le depot// git diff --cached
//comparer le depot ou le repertoire de travail// git diff  HEAD
// dernier commit au depot// git diff HEAD^1
// comparer deux commit// git diff racoursi 1 racoursu 2 (id)
** rechercher un commit **
// rechercher un commit // git log  -s  "nom"
//recherche entre deux commit// git log -g "nom(1|2)"
//qui a modifieé et quand// git blame nom
**annuler les modifications**
//remettre le repertoire exactement comme il etait// git reset --hard 
//l identifiant du commit // git log --oneline
//revenir a certaine modification // git reset -- hard ** HEAD par default** , racoursi(id)
//modifier uniquement le dépot git// git rest --soft
 **modifier un commit** deux conditions 1. quand on a pas poucis la commition dans un serveur , 2.juste la derniere commit
//modifier le dernier commit//1 git add nom , 2 git commit -m "nom" 3 --amen ( permet de modifier le dernier commit)
**enlever les fichiers **
 //nettoyer le repertoire du travail// git clean ** -f ( pour valider la supression) -n ( a blanc) -dn (supprimer avec les options a l'interieur)-df (les deux)
// supprimer les fichier present dans git ignore// git clean -xf
**comprendre le system de branche** permet de creer une version parallele de dev , faire une serie de modification sans toucher la branche de dev principale
//// git log --oneline --branches --graph
**lister creer et changer de branche**
//savoir dans quelle branche// git branch 
//afficher les branches et commit sous forme de graphe// git log --graph --oneline
//creer branche// git branch nom
//pour passer de la branche master a une autre// git chekout nom
**fussioner les branches** passer d une branche a l autre
git branch , git commit a  m "nom"
fussionner deux branche// git branch , git chekout master , git mergge nom 
**gerer les conflits**
git branch , git chekout -b nom , modification apres git commit -am "msg" , git merge nom, git add nom , git status , git commit , git status , git log --graph --one pour voir
** supprimer une branche**
git branch , git log --graph --oneline, git branch -d nom ( d pour delete)
** creer un rebassage d un branche ** condition : ne pas avoir fait de push , ne pas avoir envoyer ces modifications
git checkout -b nom , git chekout , git branch, git commit -am "msg", git chekout master , git commit -am "msg"  ,git log --graph --oneline , git rebase footer
** gerer les tags **
git log --oneline , git tag nom de version racoursi de commit , git tag --list , git show nom de version , git show version ** envoie tous les details des modifications
// ajouter une anotation a un tag// git tag -a ( a pour annotation) version racoursi -m "msg"
** creer un depot distant **
// creer un depot distant vide// cd.. , git init --bare nom 
// supprimer le depot // rm -Rf nom/ 
// creer un depot distant a partir de nous sources exsistants// git clone --bare nom/
**cloner un depot distant **
git clone nom / nom (vers quoi ),
cd ../ , nv dossier , cd nom de nv dossier , git clone url
**envoyer des modification avec push**
cd nom/ , git remote , cd ../formation/ , git remote , git remote nom ../nom/
git remote add nom ../nom/ , git remote , cd ../nom/ , apres mod , git commit -am "msg" git log--oneline , (envoyer les mod sur le depot centrale )git push nom master
**mettre a jour avec fetch ett pull**
cd ../nom/ , git branch -all(verifier) ,(copié les branches distantes vers les copie local) git fetch ,git branch --all , git merge nom/master
// second option// cd ../nom/ , git commit -am "msg" , git pull nom nom
** creer et supprimer une branche existantes**
git branch nom , git branch , git branch --all, git push origin nom , git checkout nom , 
supprimer// git branch --all , git checkout nom , git push origin:nom , git br	nch -d nom , git branch -all
**utuliser les outils et les racoursis*
// gitk interface graphique
// git-bisect ** savoir le commit qui fait ce bug 
// git-stach ** stocke temporairement les changements apportés a votre copie de travail pour que vous puissiez effectuer d autres taches;puis revenir et les reappliquer par la suite.
// git-svn ** permet de s interfacer avec git 
// git alias// ** pour simpliciter
git config --global alias.co (checkout)
git config --global alias.br (branch)
git config --global alias.ci (commit)
git config --global alias.st (status) 



 











 


