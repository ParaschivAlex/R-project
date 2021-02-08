1. Fie două variabile aleatoare discrete X şi Y.
a) Construiţi o funcţie frepcomgen care primeşte ca parametri m şi n şi care generează
un tabel cu repartiţia comună a v.a. X şi Y incompletă, dar ȋntr-o formă ȋn care poate
fi completată ulterior.
Observaţie: Se cere la a) să generaţi valorile lui X, valorile lui Y şi suficient de
multe valori pentru pi, qj şi respectiv 𝜋ij astfel ȋncât să poată fi determinată repartiţia
comună a celor doua v.a.
Nota: Ȋn construirea algoritmului puteţi ȋncepe de la cazul particular m=2 si n=3.
Dacă reuşiţi să oferiţi soluţia doar pentru acest caz particular, dar nu şi pentru cazul
general veţi primi punctaj parţial.
b) Construiţi o funcţie fcomplrepcom care completează repartiţia comună generată la
punctul anterior(pentru cazul particular sau pentru cazul general).
Nota: Ȋn cazul ȋn care nu ştiţi să rezolvaţi punctul a) puteţi construi o funcţie care
să determine repartiţia comună pornind de la un exemplu discutat la seminar.
c) Având la dispoziţie repartiţia comună a v.a. X şi Y de la punctul b) calculaţi:
1) Cov(5X+9,-3Y-2)
2) P(0<X<0.8/Y>0.3)
3) P(X>0.2,Y<1.7)
d) Pentru exemplul obţinut la punctul b) construiţi două funcţii fverind şi respectiv
fvernecor cu ajutorul cărora să verificaţi dacă variabilele X şi Y sunt:
1) independente
2) necorelate
2. Construiți o funcție ȋn R care să preia ca date de intrare densitățile de probabilitate a
două variabile aleatoare continue independente și opțiunea utilizatorului(un număr de
la 1 la 4) care să returneze următoarele rezultate:
-opțiunea 1- suma v.a. (folosiți formula de convoluție)
-opțiunea 2-diferența v.a. (folosiți formula de convoluție)
-opțiunea 3-media și dispersia celor 2 v.a.
-opțiunea 4-repezentarea grafică, ȋn același reper, a celor 2 densități, cu culori diferite
3. Construiți o funcție ȋn R care să se comporte ca un generator de numere aleatoare(se
generează n valori, unde n este dat de utilizator) avȃnd următoarele specificații:
1) Pentru prima valoare(x1) se citește timpul sistemului, se ia numărul format din
minute și secunde(t1) și se calculează modulo 17.
(ex. Daca ora sistemului este 12:15:23 atunci t1=1523)
Dacă t1 mod 17=0 atunci x1 se generează folosind funcția rnorm din R cu parametri
dați de numărul minutelor și respectiv numărul secundelor.
Dacă t1 mod 17=3 atunci x1 se generează folosind funcția rpois din R cu parametru
dat de număr reprezentȃnd minutele și se adună la el un număr y1 generat cu funcția
runif din R( cu parametrii -1 și 1) .
Dacă t1 mod 17=5 atunci x1 se generează folosind funcția rexp din R cu parametru dat de numărul reprezentat de ora sistemului.
Dacă t1 mod 17=7 atunci x1 se generează folosind funcția rbinom din R cu parametrii dați de ora sistemului și 1/nr_minute și se adună la el un număr y1 generat cu funcția runif din R( cu parametrii 0 și 5) .
Dacă t1 mod 17=8 atunci x1 se generează folosind funcția runif din R(de parametri -5 și 7).
Dacă t1 mod 17=11 atunci x1 se generează folosind funcția rgamma din R și se scade din el un număr y1 generat cu funcția rhyper din R.
Ȋn celelalte cazuri se reia procesul și se citește din nou ora sistemului. Dacă procesul a fost reluat de 2 ori și nu s-a intrat pe unul dintre cazurile de mai sus atunci x1 se generează folosind funcția rnorm din R cu parametrii 0 și 1.
2) Pentru valorile xn cu n>1 se folosește următoarea formulă de recurență:
xn=a* xn-1+b unde a este o valoare generată cu funcția rexp din R de parametru 5, iar b este o valoare generată cu funcția rnorm din R de parametri 2 și 1
Funcția returnează un vector cu valorile generate și realizează histograma lor.
4. Folosind setul de date X efectuaţi operaţii de statistică descriptivă pentru variabilele din acest set de date(medie, varianţa, quartile, boxplot, interpretări).
