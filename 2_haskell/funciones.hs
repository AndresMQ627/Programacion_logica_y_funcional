sumar :: Integer -> Integer -> Integer
sumar x y= x+y

factorial :: Integer -> Integer 
factorial 0 = 1
factorial n = n * factorial(n-1)

menu :: IO()
menu = do
    putStrLn("B====D MENU B====D")
    putStrLn("¿Que deseas hacer?")
    putStrLn("1) Factorial")
    putStrLn("2) sumar")
    putStrLn("3) salir")
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
            putStrLn("bye")
           





main :: IO()
main = menu