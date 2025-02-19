//Creo todas las constantes de cada capa
const a1 = document.querySelector(".color");
const a2 = document.querySelector(".imagen");
const img = document.querySelector(".img");
const a4 = document.querySelector(".cambiarColor");
const a5 = document.querySelector(".cambiarEstilo");
const a6 = document.querySelectorAll(".negro");
//Todo lo necesario para edad
const a3 = document.querySelector(".edad");
const boton = document.querySelector(".botonEdad");
const texto = document.querySelector(".texto");
const num = document.querySelector("#num");

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