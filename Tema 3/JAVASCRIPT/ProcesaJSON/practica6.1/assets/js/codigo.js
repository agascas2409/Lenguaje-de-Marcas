const button = document.querySelector("#buscar");
button.addEventListener("click", buscarPelicula);

/**
 * Busca el pokemon y muestra los datos en la tabla
 * NOTA: Es async porque emplea await para esperar a que llegue la respuesta
 */

async function buscarPelicula() {

    const aBuscar = document.querySelector("#pelicula").value;
    //Creamos la url colocando el texto de búsqueda en su sitio
    const url = `https://www.omdbapi.com/?t=${aBuscar}&apikey=6bd47da3`;

    const titulo = document.querySelector(".titulo");
    const anyo = document.querySelector(".anyo");
    const duraccion = document.querySelector("duraccion");

    //Capturamos los posibles errores
    try {
        //Obtenemos la respuesta
        const respuesta = await fetch(url);
        //Procesamos la respuesta a un objeto data javascript
        const data = await respuesta.json();

        //Mostramos los datos en las casillas correspondientes
        titulo.innerHTML = `<h3>${data.Title}</h3>`;
        anyo.innerHTML = `<h3>${data.Year}</h3>`;
        duraccion.innerHTML = `<h3>${data.Runtime}</h3>`;

    } catch (error) {
        //Mostramos que no se ha encontrado el pokemon y los posibles errores que puedan suceder
        titulo.innerHTML = `No se encuentra la pelicula`;
        titulo.style.color = "red";
        anyo.innerHTML = ``;
        duraccion.innerHTML = ``;
        console.error("Error al obtener datos", error);
    }

}