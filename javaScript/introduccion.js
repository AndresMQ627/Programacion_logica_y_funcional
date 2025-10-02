let x = [1,2,3,4]
const y = [30,50,...x]

console.log(y)

const edaLegalEEUU = 21
const checkEstado = (edad, edadLegal)=>{
    return edad >= edadLegal ? "Eres mayor" : "Eres menor"
}

const persona = checkEstado(18, edaLegalEEUU)
console.log(persona)

let arreglo = [

    {id:1, name:"Luis", age:20},
    {id:2, name:"Sebastiano", age:21},
    {id:3, name:"Anoon", age:20},
    {id:4, name:"Andres", age:21},
]
let ul = document.getElementById("lista") 

var todo = ""

arreglo.forEach((item)=>{
    item.age = item.age*10
    todo += `
         <li>${item.name} - ${item.age}</li>
    `
})

ul.innerHTML = todo



console.log("arreglo original", arreglo);
var copia = arreglo.map((item, index)=>{
     item.age *= 10
        return item
})

console.log("arreglo modificado", arreglo);
console.log("arreglo modificado", copia);

let url = "https://thesimpsonsapi.com/api/"
fetch(url+"characters").then((response)=>{

    if(!response.ok){
        throw "Error en la llamada"
    }
    return response.json()
}).then((data)=>{
    console.log("Datos del personaje: ",data)
    var lis=""
    data.results.forEach(personaje =>{
        lis += `
           
        <li>
            <h2>${personaje.name}</h2>
            <img width="200px" src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}"">
        </li>
        `
    })

    ul.innerHTML = lis
})