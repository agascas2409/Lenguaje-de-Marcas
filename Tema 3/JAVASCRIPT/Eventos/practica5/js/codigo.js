
const numero1 = document.querySelector("#num1");
const numero2 = document.querySelector("#num2");
const operacion = document.querySelector("#operacion");
const resultado = document.querySelector("#resultado");
const boton = document.querySelector(".boton");

boton.addEventListener("click", () => calcular(numero1, numero2, operacion.value, resultado));

function calcular(numero1, numero2, operacion, resultado){
    let num1 = parseFloat(numero1.value);
    let num2 = parseFloat(numero2.value);
    let resultadoOperacion;
    switch(operacion){
        case 'suma':
            resultadoOperacion = num1 + num2;
            resultado.value = `${resultadoOperacion}`;
            break;
        case 'resta':
            resultadoOperacion = num1 - num2;
            resultado.value = `${resultadoOperacion}`;
            break;
        case 'multiplicacion':
            resultadoOperacion = num1 * num2;
            resultado.value = `${resultadoOperacion}`;
            break;
        case 'division':
            resultadoOperacion = num1 / num2;
            resultado.value = `${resultadoOperacion}`;
            break;
    }
    
}