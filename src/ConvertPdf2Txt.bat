cd "/home/nas02a/etudiants/inf/uapv1900224/Donnees_itinerantes/Papers"
mkdir -p text2/ 
mkdir -p info/ 
for i in *.pdf
do
	echo $i
	pdf2txt -o "text/$i.txt" "$i"
	sed -n '1,2p' "text1/$i.txt" >> "info1/$i.txt"
	sed -n '/Abstract/,/Introduction/p' "text2/$i.txt" >> "info/$i.txt"
done
