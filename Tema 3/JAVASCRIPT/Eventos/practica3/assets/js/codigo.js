//Creo todas las constantes 
const b = document.querySelector("body");
const a1 = document.querySelector(".click");
const a2 = document.querySelector(".imagen1");
const a3 = document.querySelector(".imagen2");
const a4 = document.querySelector(".dobleClick");
const a5 = document.querySelector(".boton");
const a6 = document.querySelector(".cursor");

//Creo variable para la capa 2
let num1;
let num2;

//Al cargar la pagina aparece un mensaje
b.addEventListener("Load", mensaje());
function mensaje(){
    alert("Pagina cargada");
}

//Al hacer click aparece un texto
a1.addEventListener("click", () => alert('Has realizado un click'));

//Se calcula el mayor de dos numeros introducidos
a2.addEventListener("click", numeroMayor());
function numeroMayor(){
    
}
//Se muestra por pantalla si un numero es par o impar cuando el cursor deje la imagen
a3.addEventListener("click", () => alert('Has realizado un click'));

//Al hacer docle click aparece un texto
a4.addEventListener("dblclick", () => alert('Has realizado un doble click'));

//Al pulsar el boton muestra cuantas veces se ha hecho click
a5.addEventListener("click", () => alert('Has realizado un click'));

//Al entrar el cursor en la capa se solicitan dos numeros y se realiza la multiplicacion
a6.addEventListener("click", () => alert('Has realizado un click'));
