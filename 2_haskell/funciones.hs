sumar :: Integer -> Integer -> Integer
sumar x y= x+y

factorial :: Integer -> Integer 
factorial 0 = 1
factorial n = n * factorial(n-1)

absoluto :: Integer -> Integer
absoluto x = abs x

menor :: Double -> Integer
menor x = ceiling x

siguiente :: Integer -> Integer
siguiente x = succ x

menorDeDos :: Integer -> Integer -> Integer
menorDeDos x y= min x y

mayorDeDos :: Integer -> Integer -> Integer
mayorDeDos x y= max x y

division :: Integer -> Integer -> Integer
division x y=  div x y

modulo :: Integer -> Integer -> Integer
modulo x y=  mod x y

par :: Integer -> Bool
par x = even x

fluor :: Double -> Integer
fluor x = floor x

mcd :: Integer -> Integer -> Integer
mcd x y=  gcd x y

negacion :: Bool -> Bool
negacion x = not x

impar :: Integer -> Bool
impar x = odd x

sigma :: Integer -> Integer
sigma x = signum x

segundo :: Integer -> Integer -> Integer
segundo x y=  snd (x,y)


menu :: IO()
menu = do
    putStrLn("B====D MENU B====D")
    putStrLn("¿Que deseas hacer?")
    putStrLn("1) Factorial")
    putStrLn("2) sumar")
    putStrLn("3) valor absoluto")
    putStrLn("4) Siguiente de X de un decimal")
    putStrLn("5) Siguiente de X de un entero")
    putStrLn("6) Menor de dos numeros")
    putStrLn("7) Mayor de dos numeros")
    putStrLn("8) Division")
    putStrLn("9) Modulo de una division")
    putStrLn("10) par (true/false)")
    putStrLn("11) Numero entero no mayor que X")
    putStrLn("12) Maximo comun divisor")
    putStrLn("13) negacion de Boolean")
    putStrLn("14) impar (true/false)")
    putStrLn("15) Signum (1 si es positivo/-1 si es negativo)")
    putStrLn("16) retorna el segundo numero")
    putStrLn("18) salir")
    opcion <- getLine

    case opcion of
        "1" -> do 
            putStrLn("Introduce el numero")
            n1 <- getLine
            let x = read n1 :: Integer 
            putStrLn("El resultado es: "++ show(factorial x))
            menu
            
        "2" -> do
            putStrLn("Introduce el primer numero")
            numero1 <- getLine
            let x = read numero1 :: Integer 
            putStrLn("Introduce el segundo numero")
            n2 <- getLine
            let y = read n2 :: Integer 
            putStrLn("El resultado es: "++ show(sumar x y))
            menu
            
        "3" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(absoluto x))
            menu
            
        "4" -> do
            putStrLn("Introduce el número decimal: ")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El resultado es: "++ show(menor x))
            menu
            
        "5" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(siguiente x))
            menu
            
        "6" -> do
            putStrLn("Introduce el primer numero")
            numero1 <- getLine
            let x = read numero1 :: Integer 
            putStrLn("Introduce el segundo numero")
            n2 <- getLine
            let y = read n2 :: Integer 
            putStrLn("El menor es: "++ show(menorDeDos x y))
            menu
            
        "7" -> do
            putStrLn("Introduce el primer numero")
            numero1 <- getLine
            let x = read numero1 :: Integer 
            putStrLn("Introduce el segundo numero")
            n2 <- getLine
            let y = read n2 :: Integer 
            putStrLn("El mayor es: "++ show(mayorDeDos x y))
            menu
            
        "8" -> do
            putStrLn("Introduce el dividendo")
            numero1 <- getLine
            let x = read numero1 :: Integer 
            putStrLn("Introduce el divisor")
            n2 <- getLine
            let y = read n2 :: Integer 
            putStrLn("El resultado es: "++ show(division x y))
            menu
            
        "9" -> do
            putStrLn("Introduce el dividendo")
            numero1 <- getLine
            let x = read numero1 :: Integer 
            putStrLn("Introduce el divisor")
            n2 <- getLine
            let y = read n2 :: Integer 
            putStrLn("El modulo es: "++ show(modulo x y))
            menu
            
        "10" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado par es: "++ show(par x))
            menu
            
        "11" -> do
            putStrLn("Introduce el número decimal: ")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El resultado es: "++ show(fluor x))
            menu
            
        "12" -> do
            putStrLn("Introduce el dividendo")
            numero1 <- getLine
            let x = read numero1 :: Integer 
            putStrLn("Introduce el divisor")
            n2 <- getLine
            let y = read n2 :: Integer 
            putStrLn("El MCD es: "++ show(mcd x y))
            menu
            
        "13" -> do
            putStrLn("Introduce el booleano (True/False): ")
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn("la negacion es es: "++ show(negacion x))
            menu
            
        "14" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado impar es: "++ show(impar x))
            menu
        "15" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(sigma x))
            menu
        "16" -> do
            putStrLn("Introduce el primer numero")
            numero1 <- getLine
            let x = read numero1 :: Integer 
            putStrLn("Introduce el segundo numero")
            n2 <- getLine
            let y = read n2 :: Integer 
            putStrLn("El segundo numero es: "++ show(segundo x y))
            menu
        "18" -> do
            putStrLn("bye")
           





main :: IO()
main = menu