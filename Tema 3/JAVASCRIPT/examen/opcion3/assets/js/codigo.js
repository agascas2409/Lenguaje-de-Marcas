const button = document.querySelector("#buscar");
button.addEventListener("click", buscarPalabra);

const definiciones = document.querySelector("#definiciones");
definiciones.innerHTML="";
definiciones.addEventListener("change", actualizarDesplegable);

const definicion = document.querySelector(".definicion");
definicion.innerHTML="";

const desplegable = new Map();

async function buscarPalabra() {

    const aBuscar = document.querySelector("#palabra").value;
    //Creamos la url colocando el texto de búsqueda en su sitio
    const url = `https://rae-api.com/api/words/${aBuscar}`;

    const palabraBuscada = document.querySelector(".palabraBuscada");

    //Obtenemos la respuesta
    const respuesta = await fetch(url);
    //Procesamos la respuesta a un objeto data javascript
    const fichero = await respuesta.json();

    if (fichero.ok) {
        //Mostramos los datos en las casillas correspondientes
        palabraBuscada.innerHTML = fichero.data.word;
        palabraBuscada.style.color = `green`;
        for (let index = 0; index < fichero.data.meanings[0].senses.length; index++) {
            definiciones.innerHTML = definiciones.innerHTML + `<option>${index+1}</option>`;
            desplegable.set((index), fichero.data.meanings[0].senses[index].raw);
        }

        actualizarDesplegable();
    } else {
        //Mostramos que no se ha encontrado la palabra y los posibles errores que puedan suceder
        palabraBuscada.innerHTML = `Palabra no encontrada`;
        palabraBuscada.style.color = `red`;
    }
}

function actualizarDesplegable(){
    definicion.innerHTML = `${desplegable.get(definiciones.value-1)}`;
}