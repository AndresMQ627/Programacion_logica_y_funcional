let x = [1,2,3,4]
const y = [30,50,...x]

console.log(y)

const edaLegalEEUU = 21
const checkEstado = (edad, edadLegal)=>{
    return edad >= edadLegal ? "Eres mayor" : "Eres menor"
}

const persona = checkEstado(18, edaLegalEEUU)
console.log(persona)