## Komande koje sam koristio:

$pwd - Ovom komandom sam provjerio u kojem direktoriju se nalazim. \
$ls - Ovom komandom sam provjerio koji fajlovi se nalaze unutar direktorija /home/bandit0/ \
$cat readme - Pročitao fajl readme, kako bih došao do passworda. \
$cat /home/bandit1/- \
$cat spaces\ in\ this\ filename \
$ls -la - Koristio sam ovu komandu da bih vidio sakrivene fajlove. \
$file ./* - Ova komanda će nam izlistati tipove fajlova, kako bismo vidjeli koji fajl je Human Readable. \
$cat /home/bandit4/inhere/-file07 \
$find /home/bandit5/inhere -readable ! -executable -size 1033c - Da bismo među hrpom foldera i fajlova našli fajl koji je human-readable, veličine 1033 bajta, i da je non-executable, morali smo izvršiti ovu komandu koja će po ovim parametrima pretraživati definisani direktorij i uraditi filtriranje. \
$find / -user bandit7 -group bandit6 -size 33c 2>/dev/null - Da bismo bilo gdje na serveru našli fajl čiji vlasnik je korisnik bandit7, pripada grupi bandit6 i čija je veličina 33 bajta. \
$cat data.txt | grep millionth - Sa komandom grep smo izvojili red koji sadrži riječ 'millionth'. \
$sort data.txt | uniq -u - Sortirali smo sve podatke u fajlu data.txt, i onda ostavili samo jedinstvenu liniju. \
$grep -a "===*" data.txt - Prikazana je linija koja sadrži password. \
$cat data.txt | base64 -d
