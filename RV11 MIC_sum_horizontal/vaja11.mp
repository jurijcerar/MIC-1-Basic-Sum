a := lshift(smask); #255 z leftshiftom spremenimo v 510
a := a + 1; #povečamo na 512
a := a + 1;
mar := a; #mar pove kje bomo brali

rd; #moremo dvakrat prebrat
rd; #shranimo v mbr kaj se nahaja na naslovu

b := mbr; # damo število v register b, to je naš n

c := a + 1; #nova spremenljivka c ki je 520 od tu naprej seštevamo
c := c + 1;
c := c + 1;
c := c + 1;
c := c + 1;
c := c + 1;
c := c + 1;
c := c + 1;

8: mar := c; #povemo kje beremo
rd;
rd; #v mbr shranimo vrednost
d := d + mbr; # v d sharnjujemo vsoto
c := c + 1; #moremo nato brati na naslednji lokaciji zato ++
b := b +(-1); #dekrementiramo b zato da vemo kolikokrat se še more zanka izvest
alu := b;if z then goto 6; #z alu preverimo če je b že 0
goto 8; #če ni gremo še enkrat skozi zanko

6: b := smask + 1; #b več ne potrebujemo zato ga zaj uporabimo za lokacijo kam shranimo
mar := b; #na lokacijo b
mbr := d; #napišemo vrednost d
wr; #dejansko napišemo
wr;

