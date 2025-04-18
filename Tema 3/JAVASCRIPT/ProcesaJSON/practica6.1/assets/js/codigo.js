const button = document.querySelector("#buscar");
button.addEventListener("click", buscarPelicula);

const medio = document.querySelector(".medio");
const valor = document.querySelector(".valor");
const valoracion = document.querySelector(".valoracion");
valoracion.innerHTML = ``;
const valoresDesplegable = new Map();

valoracion.addEventListener("click", actualizarRating);

async function buscarPelicula() {

    const aBuscar = document.querySelector("#pelicula").value;
    //Creamos la url colocando el texto de búsqueda en su sitio
    const url = `https://www.omdbapi.com/?t=${aBuscar}&apikey=6bd47da3`;

    const titulo = document.querySelector(".titulo");
    const anyo = document.querySelector(".anyo");
    const duracion = document.querySelector(".duracion");

    //Obtenemos la respuesta
    const respuesta = await fetch(url);
    //Procesamos la respuesta a un objeto data javascript
    const data = await respuesta.json();

    if (data.Title) {
        //Mostramos los datos en las casillas correspondientes
        titulo.style.color = "white";
        titulo.innerHTML = `<p>${data.Title}</p>`;
        anyo.innerHTML = `<p>${data.Year}</p>`;
        duracion.innerHTML = `<p>${data.Runtime}</p>`;
        

        for (let index = 0; index < data.Ratings.length; index++) {
            valoracion.innerHTML = valoracion.innerHTML + `<option>${data.Ratings[index].Source}</option>`;
            valoresDesplegable.set(data.Ratings[index].Source, data.Ratings[index].Value);
        }
        
        actualizarRating();

    } else {
        //Mostramos que no se ha encontrado la pelicula y los posibles errores que puedan suceder
        titulo.innerHTML = `No se encuentra la pelicula`;
        titulo.style.color = "red";
        anyo.innerHTML = ``;
        duracion.innerHTML = ``;
        console.error("Error al obtener datos", error);
    }
}

function actualizarRating(){
    medio.innerHTML = `${valoracion.value}`;
    valor.innerHTML = `${valoresDesplegable.get(valoracion.value)}`;
}