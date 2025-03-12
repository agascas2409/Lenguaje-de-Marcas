const button = document.querySelector("#buscar");
button.addEventListener("click", buscarPersonaje);

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