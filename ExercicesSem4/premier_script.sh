#!/paul/bin/bash

cd exercice1/ann/
# Aller chercher le dossier

echo Resultats toutes années confondues :
cat 201*.ann | grep Location | cut -f 3 | wc -l

echo Resultats pour 2016 :
cat 2016*.ann | grep Location | cut -f 3 | wc -l

echo Resultats pour 2017 :
cat 2017*.ann | grep Location | cut -f 3 | wc -l

echo Resultats pour 2018 :
cat 2018*.ann | grep Location | cut -f 3 | wc -l
