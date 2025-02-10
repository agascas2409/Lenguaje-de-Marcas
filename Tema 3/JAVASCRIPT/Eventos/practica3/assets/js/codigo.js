//Creo todas las constantes 
const b = document.querySelector("body");
const a1 = document.querySelector(".click");
const a2 = document.querySelector(".imagen1");
const a3 = document.querySelector(".imagen2");
const a4 = document.querySelector(".dobleClick");
const a5 = document.querySelector(".boton");
const a6 = document.querySelector(".cursor");

//Al cargar la pagina aparece un mensaje
b.addEventListener("Load", mensaje());
function mensaje(){
    alert("Pagina cargada");
};

//Al hacer click aparece un texto
a1.addEventListener("click", () => alert('Has realizado un click'));

//Se calcula el mayor de dos numeros introducidos
a2.addEventListener("click", numeroMayor());
function numeroMayor(){
    const num1 = parseInt(prompt("Introduce un número: "));
    const num2 = parseInt(prompt("Introduce un número: "));
    if(!isNaN(num1) && !isNaN(num2)){
        if(num1 > num2){
            alert('El número máximo es ' + num1);
        } else {
            alert('El número máximo es ' + num2);
        }
    } else {
        alert('El número no es valido');
    }
};

//Se muestra por pantalla si un numero es par o impar cuando el cursor deje la imagen
a3.addEventListener("mouseleave", parOImpar());
function parOImpar(){
    const num = parseInt(prompt("Introduce un número: "));
    if(!isNaN(num)){
        if(num % 2 == 0){
            alert('El número es par');
        } else {
            alert('El número es impar');
        }
    }
};

//Al hacer docle click aparece un texto
a4.addEventListener("dblclick", () => alert('Has realizado un doble click'));

//Al pulsar el boton muestra cuantas veces se ha hecho click
a5.addEventListener("click", () => alert('Has realizado un click'));

//Al entrar el cursor en la capa se solicitan dos numeros y se realiza la multiplicacion
a6.addEventListener("mouseenter", multiplicacion());
function multiplicacion(){
    const num1 = parseInt(prompt("Introduce un número: "));
    const num2 = parseInt(prompt("Introduce un número: "));
    if(!isNaN(num1) && !isNaN(num2)){
        let num3 = num1 * num2;
        alert('La multiplicación de ' + num1 + ' y ' + num2 + ' es: ' + num3);
    } else {
        alert('El número no es valido');
    }
};