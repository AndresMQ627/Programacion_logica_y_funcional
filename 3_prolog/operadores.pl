%suma
suma(X, Y, R) :- R is X + Y.
/*?- suma(10, 10, R).
R = 20.*/

%resta
resta(X, Y, R) :- R is X - Y.
/*?- resta(10, 10, R).
R = 0*/

%multiplicacion
multi(X, Y, R) :- R is X * Y.
/*?- multi(10, 10, R).
R = 100.*/

%division
div(X, Y, R) :- R is X / Y.
/*?- div(10, 5, R).
R = 2.*/

%resto
resto(X, Y, R) :- R is X mod Y.
/*?- resto(5, 3, R).
R = 2.*/

%potencia
potencia(X, Y, R) :- R is X ^ Y.
/*?- potencia(5, 2, R).
R = 25.*/

%negacion
neg(X, R) :- R is -X.
/*?- neg(5, R).
R = -5.*/

%valorAbsoluto
abs(X, R) :- R is abs(X).
/*?- abs(10, R).
R = 10.*/

%arcoCoseno
acos(X, R) :- R is acos(X).
/*?- acos(0.5, R).
R = 1.0471975511965979.*/

%arcoSeno
aseno(X, R) :- R is asin(X).
/*؀?- aseno(0.5, R).
R = 0.5235987755982989.*/

%arcoTangente
atan(X, R) :- R is atan(X).
/*؀?- atan(0.5, R).
R = 0.4636476090008061.*/

%Coseno
cos(X, R) :- R is cos(X).
/*?- cos(0.5, R).
R = 0.8775825618903728.*/

%Exponencial
exp(X, R) :- R is exp(X).
/*?- exp(0.5, R).
R = 1.6487212707001282*/

%Logaritmo
ln(X, R) :- R is log(X)/log(2).
/*?- ln(0.5, R).
R = -1.0.*/

%LogaritmoBase2
lnB(X, R) :- R is log(X).
/*?- lnB(0.5, R).
R = -0.6931471805599453*/

%Seno
sen(X, R) :- R is sin(X).
/*?- sen(0.5, R).
R = 0.479425538604203.3*/

%RaizCuadrada
raiz(X, R) :- R is sqrt(X).
/*?- raiz(25, R).
R = 5.0.*/

%Tangente
tangente(X, R) :- R is tan(X).
/*?- tangente(0.5, R).
R = 0.5463024898437905.*/

%Redondeo
redondeo(X, R) :- R is round(X).
/*?- redondeo(0.5, R).
R = 1*/

%menorQue
menorque(X, Y) :- X<Y.
/*?- menorQue(5, 10).
Correct to: "menorque(5,10)"? yes
true.*/

%mayorQue
mayorque(X, Y) :- X>Y.
/*?- mayorque(10, 5).
Correct to: "mayorque(10,5)"? yes
true.*/

%menorigual
menorigual(X, Y) :- X=<Y.
/*?- menorigual(10, 10).
true.*/

%mayorigual
mayorigual(X, Y) :- X>=Y.
/*?- mayorigual(20, 20).
true.*/

%igual
igual(X, Y) :- X=Y.
/*?- igual(20, 20).
true.*/

%distinto
distinto(X, Y) :- X\=Y.
/*?- distinto(20, 80).
true.
*/