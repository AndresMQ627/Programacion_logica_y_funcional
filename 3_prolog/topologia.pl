
%topologia
pertenece(router, red_uno).
pertenece(router, red_dos).

pertenece(red_uno, pc_uno).
pertenece(red_uno, pc_dos).
pertenece(red_uno, pc_tres).
pertenece(red_uno, pc_cuatro).

pertenece(red_dos, pc_cinco).
pertenece(red_dos, pc_seis).
pertenece(red_dos, pc_siete).
pertenece(red_dos, servidor).



/*Muestre las PCs de la topología de estrella (red1).

?- pertenece(red_uno, X).
X = pc_uno ;
X = pc_dos ;
X = pc_tres ;
X = pc_cuatro.

*/

/*Desarrolle una regla que determine si un dispositivo pertenece a una red.

?- pertenece(red_dos, pc_seis).
true .

*/

puede_comunicarse(A, B) :-
    pertenece(Red, A),
    pertenece(Red, B).

puede_comunicarse(A, B) :-
    pertenece(router, RedA),
    pertenece(RedA, A),
    pertenece(router, RedB),
    pertenece(RedB, B).

/*¿Puede el S1 enviar ping a la pc2?

?- puede_comunicarse(servidor, pc_dos).
true .

*/

redes_distintas(A, B) :-
    pertenece(RedA, A),
    pertenece(RedB, B),
    RedA \= RedB.

/*Invente una regla

?- redes_distintas(pc_uno, pc_seis).
true.

*/
dispositivos(red_uno, 4).
dispositivos(red_dos, 4).

total_dispositivos(T) :-
    dispositivos(red_uno, A),
    dispositivos(red_dos, B),
    T is A + B.


/*Invente una regla que utilice una expresión aritmética.

?- redes_distintas(pc_uno, pc_seis).
true.

*/

velocidad(red_uno, 1000).
velocidad(red_dos, 100).

masveloz(red_uno) :-
    velocidad(red_uno, A),
    velocidad(red_dos, B),
    A > B.

maslenta(red_dos) :-
    velocidad(red_uno, A),
    velocidad(red_dos, B),
    B < A.

/*Invente una regla que utilice un comparador.

?- masveloz(X).
X = red_uno.

?- maslenta(X).
X = red_dos.

*/

