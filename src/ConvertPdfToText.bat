cd "/home/nas02a/etudiants/inf/uapv1900224/Donnees_itinerantes/Papers"
mkdir -p text2/ 
mkdir -p info/ 
for i in *.pdf
do
	echo $i
	pdftotext -f 1 -l 2 "$i" "text2/$i.txt"
	sed -n '1,2p' "text2/$i.txt" >> "info/$i.txt"
	sed -n '/Abstract/,/Introduction/p' "text2/$i.txt" >> "info/$i.txt"
done
