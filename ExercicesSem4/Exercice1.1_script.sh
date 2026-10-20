#!/bin/bash
DATA_TYPE=$1
echo "Types d'entités disponibles : Date, Location, Organization, Person"
if [[ "$DATA_TYPE" =~ (Date|Location|Organization|Person) ]]
    then echo "On va compter les occurences de $DATA_TYPE"
else
    echo "Aucune entité n'a été entrée"
    exit
fi
# Petit test avec read
read -p "Choix de l'année : " ANNEE
cd /home/paul/Documents/Master\ TAL/Semestre\ 1/Ingenerie/ProjetProgrammation/exercice1/ann/
echo "On s'intéresse à $DATA_TYPE pour l'année $ANNEE"

cat "$ANNEE"*.ann | grep $DATA_TYPE | cut -f 3 | wc -l
