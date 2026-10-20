#!/bin/bash
DATA_TYPE=$1
ANNEE=$2
echo "Types d'entités disponibles : Date, Location, Organization, Person"
echo On va compter les occurences de $DATA_TYPE


cd ../exercice1/ann/
echo "On s'intéresse à $DATA_TYPE pour l'année $ANNEE"

cat "$ANNEE"*.ann | grep $DATA_TYPE | cut -f 3 | wc -l
