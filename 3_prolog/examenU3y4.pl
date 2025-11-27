/*
Definir los hechos de los lenguajes derivados de ISWIM siguiendo el orden de las flechas
*/

proviene(iswim,sasli).
proviene(iswim,ml).
proviene(iswim,hope).

proviene(sasli,krc).

proviene(krc,miranda).
proviene(ml,miranda).
proviene(hope,miranda).

proviene(miranda,haskell).

proviene(haskell,mondrian).
proviene(haskell,haskellmasmas).
proviene(haskell,ohaskell).

descendientes(iswim, 3).
descendientes(sasli, 1).
descendientes(ml, 1).
descendientes(hope, 1).
descendientes(miranda, 1).
descendientes(haskell, 3).

/*
Muestre los derivados de ML

?- proviene(ml,X).
X = miranda

*/

/*
¿Es hijo KRC de C++? 

?- proviene(cmasmas,krc).
false.

*/

/*
¿Es Mondrian lenguaje hermano de Haskell++? (devolverá true o false;

?- proviene(X,haskellmasmas), proviene(Y, mondrian).
X = Y, Y = haskell.

*/

categoria(Lenguaje, Categoria) :-
    descendientes(Lenguaje, N),
    ( N >= 3 -> Categoria = muchos
    ; N =< 1 -> Categoria = pocos
    ; Categoria = medio ).

/*
Invente una regla(divide los lenguajes en  categorias)

?- categoria(hope, X).
X = pocos.

?- categoria(haskell, X).
X = muchos.

*/


 
total_lenguajes(T) :-
    descendientes(iswim, A),
    descendientes(sasli, B),
    descendientes(ml, C),
    descendientes(hope, D),
    descendientes(miranda, E),
    descendientes(haskell, F),
    T is A + B + C + D + E + F.

/*
Invente una regla que utilice una expresión aritmética(suma todos los lenguajes).

?- total_lenguajes(X).
X = 10.

*/

compara(L1, L2, Mayor) :-
    descendientes(L1, N1),
    descendientes(L2, N2),
    ( N1 > N2 -> Mayor = L1
    ; N2 > N1 -> Mayor = L2
    ; Mayor = iguales ).

/*
Invente una regla que utilice un comparador (compara entre dos cual tiene mas lenguajes descendientes).

?- compara(haskell, ml, X).
X = haskell.

*/