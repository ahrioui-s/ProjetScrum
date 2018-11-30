cd "/home/nas02a/etudiants/inf/uapv1900224/Donnees_itinerantes/Papers"
for i in *.pdf
do
	echo $i
	pdftotext "$i" "text2/$i.txt"
done
