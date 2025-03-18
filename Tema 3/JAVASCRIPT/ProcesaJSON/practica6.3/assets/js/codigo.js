const button = document.querySelector("#buscar");
button.addEventListener("click", buscarPersonaje);

const buttonEpisodio = document.querySelector("#buscarEpisodio");
buttonEpisodio.addEventListener("click", buscarEpisodio);

async function buscarPersonaje() {

    const aBuscar = document.querySelector("#personaje").value;
    //Creamos la url colocando el texto de búsqueda en su sitio
    const url = `https://rickandmortyapi.com/api/character/${aBuscar}`;

    const nombre = document.querySelector(".nombre");
    const especie = document.querySelector(".especie");
    const genero = document.querySelector(".genero");
    const imagen = document.querySelector(".imagen");
    const episodios = document.querySelector(".episodios");
    const tabla = document.querySelector(".tablaRickYMorty");

    //Obtenemos la respuesta
    const respuesta = await fetch(url);
    //Procesamos la respuesta a un objeto data javascript
    const data = await respuesta.json();

    try {
        nombre.innerHTML=`${data.name}`;
        especie.innerHTML=`${data.species}`;
        genero.innerHTML=`${data.gender}`;
        imagen.src=`${data.image}`;
        episodios.innerHTML=`${data.episode.length}`;

        if (data.gender == "Male") {
            tabla.style.color="red";
        } else {
            tabla.style.color="blue";
        }

    } catch (error) {
        nombre.innerHTML="";
        especie.innerHTML="";
        genero.innerHTML="";
        imagen.src="";
        episodios.innerHTML="";
    }

}

async function buscarEpisodio() {

    const aBuscar = document.querySelector("#episodio").value;
    //Creamos la url colocando el texto de búsqueda en su sitio
    const url = `https://rickandmortyapi.com/api/episode/${aBuscar}`;

    const tablaPersonajes = document.querySelector(".tablaEpisodios");
    tablaPersonajes.innerHTML="";

    //Obtenemos la respuesta
    const respuesta = await fetch(url);
    //Procesamos la respuesta a un objeto data javascript
    const data = await respuesta.json();

    try {
        for (let index = 0; index < data.characters.length; index++) {
            const respuesta1 = await fetch(data.characters[index]);
            const data2 = await respuesta1.json();
            tablaPersonajes.innerHTML = tablaPersonajes.innerHTML + `
            <tr>
                <td>${data2.name}</td>
                <td><img src="${data2.image}"</td>
            </tr>`;
        }

    } catch (error) {
        foto.src="";
        personajesEpisodio.innerHTML="";
    }

}