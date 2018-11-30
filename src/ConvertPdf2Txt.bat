cd "/home/nas02a/etudiants/inf/uapv1900224/Donnees_itinerantes/Papers"
for i in *.pdf
do
	echo $i
	pdf2txt -o "text/$i.txt" "$i"
done
