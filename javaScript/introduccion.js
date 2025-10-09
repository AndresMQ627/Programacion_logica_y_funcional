var ul = document.getElementById("lista")

let url = "https://thesimpsonsapi.com/api/"

let arr_original = []
var list=""

var getLista = (page)=>{ 

    fetch(url+"characters?page="+page).then(response=>{
        if(!response.ok){
            console.log("Error en la red")
        }
        return response.json()
    }).then(data=>{
        console.log("Datos del personaje: ",data)
        
        data.results.forEach(personaje=>{
            arr_original.push({
                personaje:personaje,
                datos:null,
    
            })
            list+=`
            <li>
                <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px">
                <h2>${personaje.name}</h2>
            </li>   `
        })
        ul.innerHTML = list
        console.log("ARREGLO FINAL", arr_original)
    })

}

for (let i = 1; i <= 5; i++) {
    
    getLista(i)
}

setTimeout(()=>{
    document.getElementById("preloader").style.display = "none"

},1000)

const imprimir =(arr)=>{
    var todo = "";
    arr.forEach(item=>{
        todo+=`
            <li>
                <img src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px">
                <h2>${item.personaje.name}</h2>
            </li>   `
    })
    ul.innerHTML=todo
}


document.addEventListener('DOMContentLoaded', () => {
    const selectElement = document.getElementById('opciones');

    selectElement.addEventListener('change', (event) => {
        const selectedValue = event.target.value;
        console.log('Valor seleccionado:', selectedValue);
        if (selectedValue === 'linkEdad') {
            
            let res = arr_original.filter((item) => item.personaje.age !== null && item.personaje.age < 18);
            console.log(res);
            imprimir(res);
        } else if (selectedValue === 'mostrarTodo') {
            imprimir(arr_original);
        }else if (selectedValue === 'fallecidos') {
            let res = arr_original.filter((item) => item.personaje.status !== null && item.personaje.status == "Deceased");
            console.log(res);
            imprimir(res);
        }else if (selectedValue === 'opea') {
            let res = arr_original
            .filter((item) => item.personaje.age !== null) 
            .sort((a, b) => a.personaje.age - b.personaje.age); 
            console.log(res);
             imprimir(res);
        }else if (selectedValue === 'viejoYjoven') {
            let res = arr_original.filter((item) => item.personaje.age !== null); 

            if (res.length > 0) {
                let maxAge = Math.max(...res.map((item) => item.personaje.age)); 
                let minAge = Math.min(...res.map((item) => item.personaje.age)); 

                let oldestAndYoungest = res.filter((item) => 
                    item.personaje.age === maxAge || item.personaje.age === minAge
                ); 

                imprimir(oldestAndYoungest);}
        }else if (selectedValue === 'promedio') {
            let res = arr_original.filter((item) => item.personaje.age !== null); 

            if (res.length > 0) {
                let totalEdad = res.reduce((sum, item) => sum + item.personaje.age, 0); 
                let promedio = totalEdad / res.length; 
                alert(`Promedio de edades: ${promedio.toFixed(2)}`);

               
            } 
        }else if (selectedValue === 'Estudiantes') {
            const text ="Student";
            let res = arr_original.filter((item) => item.personaje.occupation.include(text));
            console.log(res);
            imprimir(res);
        }
      
    });
});




