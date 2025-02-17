//Creo todas las constantes de cada capa
const a1 = document.querySelector(".color");
const a2 = document.querySelector(".imagen");
const a4 = document.querySelector(".cambiarColor");
const a5 = document.querySelector(".cambiarEstilo");
const a6 = document.querySelectorAll(".negro");
//Todo lo necesario para edad
const a3 = document.querySelector(".edad");
const boton = document.querySelector(".botonEdad");
const texto = document.querySelector(".texto");
const num = document.querySelector("#num");

//Cambia el color el parrafo al entrar y salir el raton
a1.addEventListener("mouseenter", () => {a1.style.color="red"});
a1.addEventListener("mouseleave", () => {a1.style.color="black"});

//Cambiar la imagen cuando pase el cursor
//No funciona
const nombreImagen = img.src.split("/").pop();
a2.addEventListener("mouseenter", () => cambiarImagen(nombreImagen));
function cambiarImagen(nombreImagen){
    if (nombreImagen === "corazon.png"){
        nombreImagen = img.src = "./assets/img/rosa.jpg";
    } else {
        nombreImagen = img.src = "./assets/img/corazon.png";
    }
}

//Comprueba que la edad esta en el rango
//No funciona
boton.addEventListener("click", () => numero(num, texto));
function numero(num, texto) {
    let a=parseInt(num.value);
    if (isNaN(num)){
        texto.textContent = 'Introduce un número valido';
    } else {
        if(a >= 1 && a <= 100){
            texto.textContent = 'Numero correcto';
        } else {
            texto.textContent = 'Introduce un valor entre 1 y 100';
        }
    }
    return texto;
}

//Cambia fondo negro o rojo
a4.addEventListener("click", () => cambiarFondo(a6));
function cambiarFondo(a6){
    a6.forEach((fondo) => {fondo.classList.toggle("rojo")});
}

//