public class Main
{
	public static void main(String[] args) {
		
		int x=10;
        int b=10;
		//Expresión #1: x++ incrementa el valor en 1 del valor de x, pero devuelve el valor original antes de incrementarlo
        System.out.println("Expresion #1: "+(x++));

		x=10;
        b=10;

		 // Expresión #2: Preincrementa x y lo imprime pasa de 10 a 11
		 System.out.println("Expresion #2: "+ (++x)); 

		 x=10;
         b=10;

		 // Expresión #3: b++ * -3 = -30 y -3 % x++ = -3 por lo tanto -30 no es igual a -3 entonces el resultado es "false"
		 System.out.println("Expresion #3: "+ (b++ * -3 == -3 % x++));

		 x=10;
         b=10;
		 double j = 30-10;
		 j/= ++b + (30 % 14);
 
		 // Expresión #4: j vale 20 y 30 % 14 = 2 , entonces b++ que es igual a 11 + 2 = 13, por ultimo 20 / 13 = "1.5384615384615385"
		 System.out.println("Expresion #4: "+ j);

		 x=10;
         b=10;
		 int k = (-50 * x++ * 80) % (b/ 4);
		 k*= 8;
		 x=k;
 
		 // Expresión #5: La operacion grande da de resultado -40000 y luego se divide entre 2 lo cual da como resto un 0 que multiplicado por 8 es igual a 0
		System.out.println("Expresion #5: "+x);

		 x=10;
         b=10;
		 int z= x++ - 8 + 3 - ((5 / 4) % -3) + 8;
		 b*=z;
 
		 // Expresión #6: la primera parte es la division, luego se realiza el resto y por ultimo las sumas y restas dando de resultado 120
		 System.out.println("Expresion #6: " + b);
		 
		 x=10;
         b=10;
		 // Expresión #7: b *= expresión; x recibe el nuevo valor de b
		 x = b *= 50 / 30 * ++x + 80; 
		 System.out.println("Expresion #7: " + x); 
		 
 
		 // Expresión #8: Operadores inválidos y uso indebido de tipos
		 //System.out.println(++x % 20.2 == -x /% b % = --x);
 
		 // Expresión #9: Asignación a constante y errores de operadores
		 // 1 *= b++ - b-- / 3 % ++b = 10 + 1;
 
		 // Expresión #10: signación y suma mal combinadas
		 // -10 - 0 * -10 == x++ + x+=x * x;
 
		 // Expresión #11: Asignación a una expresión (a * b) no es válida
		 // a * b = b++ + b-- + --b + x++ + x--;
	}
}