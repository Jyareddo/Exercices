 #!/usr/bin/bash
echo "Memo : entrer l'année, le mois et le nombre d'entités à afficher"

# Les arguments à inclure
ANNEE=$1
MOIS=$2
NB_LIEUX=$3

echo "On va trouver les $NB_LIEUX lieux les plus cités de $MOIS/$ANNEE"

# Aller chercher les fichiers
cd ../exercice1/ann/

# Liste les 15 lieux les plus cités
cat "$ANNEE"_"$MOIS"*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -n -r | head -n "$NB_LIEUX"

