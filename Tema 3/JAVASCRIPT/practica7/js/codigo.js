const numeros = document.querySelectorAll(".boton");
const operaciones = document.querySelectorAll(".operacion");
const limpia = document.querySelector(".limpia");
const solucion = document.querySelector("#solucion");
const display = document.querySelector("#display");

let resultado;
let operando = "";
let operandoActual = "";
let operandoGuardado = "";

solucion.addEventListener("click", calcularOperacion);
limpia.addEventListener("click", borrar);

numeros.forEach(numero => {
    numero.addEventListener("click", () => {
        if (!operandoActual.includes(".") || operandoActual.includes(".") && numero.value != ".") {
            operandoActual = operandoActual + numero.value;
            display.value = operandoActual;
        } else {
            display.value = "Un numero no puede tener dos puntos";
            actualizar();
        }
    })
});

operaciones.forEach(operacion => {
    operacion.addEventListener("click", () => {
        operando = operacion.value;
        display.value = operacion.value;
        operandoGuardado = operandoActual;
        operandoActual = "";
    })
});

function calcularOperacion() {
    switch (operando) {
        case "+":
            resultado = operandoGuardado + operandoActual;
            actualizar();
            display.value = resultado;
            break;
        case "-":
            resultado = operandoGuardado - operandoActual;
            actualizar();
            display.value = resultado;
            break;
        case "x":
            resultado = operandoGuardado * operandoActual;
            actualizar();
            display.value = resultado;
            break;
        case "/":
            if (operandoActual == 0) {
                display.value = "El divisor no puede ser 0";
            } else {
                resultado = operandoGuardado / operandoActual;
                actualizar();
                display.value = resultado;
            }
            break;
        default:
            display.value = "No se a seleccionado operación";
            break;
    }
}

function borrar() {
    display.value = "";
    resultado = "";
    operando = "";
    operandoActual = "";
    operandoGuardado = "";
}

function actualizar(){
    operandoGuardado = "";
    operandoActual = "";
    operando = "";
}