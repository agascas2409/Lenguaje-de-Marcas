//Declaramos el boton y le añadimos un evento
const button = document.querySelector("#buscar");
button.addEventListener("click", buscarPalabra);

//Declaramos el desplegable y le añadimos un evento al cambiar la seleccion del desplegable
const definiciones = document.querySelector("#definiciones");
definiciones.addEventListener("change", actualizarDesplegable);
definiciones.innerHTML="";

//Declaramos donde vamos a mostrar las informacion
const palabraBuscada = document.querySelector(".palabraBuscada");
const definicion = document.querySelector(".definicion");
definicion.innerHTML="";

//Creamos un mapa
const desplegable = new Map();

async function buscarPalabra() {

    //Hay que tener cuidado con las palabras que se introducen son sensibles a tilde
    const aBuscar = document.querySelector("#palabra").value;
    //Creamos la url colocando el texto de búsqueda en su sitio
    const url = `https://rae-api.com/api/words/${aBuscar}`;

    //Obtenemos la respuesta
    const respuesta = await fetch(url);
    //Procesamos la respuesta a un objeto data javascript
    const fichero = await respuesta.json();

    if (fichero.ok) {
        //Mostramos los datos en las casillas correspondientes
        if (fichero.data.meanings[0].origin) {
            palabraBuscada.innerHTML = `${fichero.data.word} (${fichero.data.meanings[0].origin.raw})`;
            palabraBuscada.style.color = `green`;
        } else {
            palabraBuscada.innerHTML = `${fichero.data.word}`;
            palabraBuscada.style.color = `green`;
        }
        
        definiciones.innerHTML="";
        //Utilizammos un for para guardar el numero de definiciones que tiene la palabra buscada
        //Ademas de guardarlo en el mapa para despues poder acceder a esa información
        for (let index = 0; index < fichero.data.meanings[0].senses.length; index++) {
            definiciones.innerHTML = definiciones.innerHTML + `<option>${index+1}</option>`;
            desplegable.set((index), fichero.data.meanings[0].senses[index].raw);
        }

        //Para que se muestre la definición 1 en el momento en el que se busque la palabra
        actualizarDesplegable();
    } else {
        //Mostramos que no se ha encontrado la palabra y los posibles errores que puedan suceder
        palabraBuscada.innerHTML = `Palabra no encontrada`;
        palabraBuscada.style.color = `red`;
        definiciones.innerHTML="";
        definicion.innerHTML ="";
    }
}

function actualizarDesplegable(){
    //Actualizamos el desplegable dependiendo de la opción que haya elegido el usuario
    definicion.innerHTML = `${desplegable.get(definiciones.value-1)}`;
}