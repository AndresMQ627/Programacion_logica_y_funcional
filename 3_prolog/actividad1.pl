jefe(mark, sheryl).
jefe(sheryl, david).
jefe(sheryl, timothy).
jefe(sheryl, mike).
jefe(sheryl, elliot).
jefe(sheryl, lori).
jefe(elliot, rebecca).
jefe(elliot, heather).



%1.- ¿Quien es el jefe de rebecca?
%?- jefe(X, rebecca).
%X = elliot.

%2.- ¿Es jefe Mark del jefe de Rebecca?
%?- jefe(X, rebecca), jefe(Y, X), jefe(Z, Y).
%X = elliot,
%Y = sheryl,
%Z = mark.

%¿Es lori jefe de alguien?
/*
  ?- jefe(lori, X).
  false.
*/

%Mostrar empleados del jefe de Heather
/*
  ?- jefe(elliot, X).
  X = rebecca ;
  X = heather.
*/

%Es Timothy jefe de Rebecca?
/*
  ?- jefe(timothy, rebecca).
  false.
*/

%Mostrar compañeros de nivel de mike
/*
  ?- jefe(timothy, rebecca).
  false.
*/
