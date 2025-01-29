//Ejercicio 2

//Declaramos valores
const nombre = "Éxarion";
const arma_principal = "Espada del Destino";
let arma_secundaria = "Arco simple";
let nivel = 5;
let puntosVida = 100;
let armadura = true;

//Mostramos por pantalla
console.log(`Estado del héroe: `);
console.log(`Nombre: ${nombre}`);
console.log(`Nivel: ${nivel}`);
console.log(`Puntos de vida: ${puntosVida}`);
console.log(`Arma principal: ${arma_principal}`);
console.log(`Arma secundaria: ${arma_secundaria}`);
console.log(`Tiene armadura: ${armadura}`);

//Héroe después del combate
nivel++;
puntos_de_vida -= 30;
//Volvemos a mostrar por pantalla
console.log(`Estado del héroe después del combate: /n Nombre: ${nombre} /n Nivel: ${nivel} /n Puntos de vida: ${puntos_de_vida} /n Arma principal: ${arma_principal} /n Arma secundaria: ${arma_secundaria} /n Tiene armadura: ${armadura}`);

//Cambios
let nivelCadena = nivel.toString;
let puntosFloat = parseFloat(puntosVida);
console.log(`Nivel Cadena: ${nivelCadena}`);
console.log(`Puntos float: ${puntosFloat}`);

//Nuevas variables
let danyoBase = 50;
let multCritico = 2;
let probCritico = 0.50;
let esCritico = probCritico>Math.random();
let variable = esCritico ? danyoBase * multCritico : danyoBase;

console.log(`El héroe inflige ${variable} puntos de daño orque esCritico tiene valor ${esCritico}`);