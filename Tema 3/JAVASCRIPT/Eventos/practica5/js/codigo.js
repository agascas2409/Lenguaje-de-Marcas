
const num1 = document.querySelector("#num1");
const num2 = document.querySelector("#num2");
const operacion = document.querySelector("#operacion");
const suma = document.querySelector(".suma");
const resta = document.querySelector(".resta");
const multiplicacion = document.querySelector(".multiplicacion");
const division = document.querySelector(".division");
const resultado = document.querySelector("#resultado");
const boton = document.querySelector(".boton");

boton.addEventListener("click", () => calcular(num1, num2, operacion));

function calcular(num1, num2, operacion){
    let num1 = parseFloat(num1.value);
    let num2 = parseFloat(num2.value);
    let resultadoOperacion;
    if(isNaN(num1) || isNaN(num2)){
        resultado.textContent("error");
        resultado.style.color = "red";
    } else {
        switch(operacion){
            case suma:
                resultadoOperacion = num1 + num2;
                resultado.value = `${resultadoOperacion}`;
                break;
            case resta:
                resultadoOperacion = num1 - num2;
                resultado.value = `${resultadoOperacion}`;
                break;
            case multiplicacion:
                resultadoOperacion = num1 * num2;
                resultado.value = `${resultadoOperacion}`;
                break;
            case division:
                resultadoOperacion = num1 / num2;
                resultado.value = `${resultadoOperacion}`;
                break;
        }
    }
    
}