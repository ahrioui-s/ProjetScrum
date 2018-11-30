// Rederiger vers le dossier des pdf
cd "/home/nas02a/etudiants/inf/uapv1900224/Donnees_itinerantes/Papers"
cmd /k for %%i in (*) do "/home/nas02a/etudiants/inf/uapv1900224/Donnees_itinerantes/Papers/pdf2txt.py" -o /home/nas02a/etudiants/inf/uapv1900224/Donnees_itinerantes/text/%%~ni.txt %%i
// j'ai utilise for-loop pour parcourir tous les fichiers pdf et les faire entrer pour les traiter
//%%i est le fichier pdf courant
// * est le path courant
//~n faire retourner le nom exacte du fichier
