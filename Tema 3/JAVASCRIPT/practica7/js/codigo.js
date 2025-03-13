const numeros = document.querySelectorAll(".boton");
const operaciones = document.querySelectorAll(".operacion");
const limpiar = document.querySelector(".limpiar");
const solucion = document.querySelector("#solucion");
const display = document.querySelector("#display");

let primerOP;
let segundoOP;
let operacion = "";
let operandoActual;

numeros.forEach(numero => {
    numero.addEventListener("click", () => {
        if (operacion != "") {
            display.value = "";
            operandoActual = numero.value;
            display.value = operandoActual;
        } else {
            
        }
    })
});









operaciones.forEach(operacion => {
    operacion.addEventListener("click", )
});



solucion.addEventListener("click", calcularOperacion);

function calcularOperacion() {
    
}