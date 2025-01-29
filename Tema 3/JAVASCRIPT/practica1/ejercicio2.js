//Ejercicio 2

//Declaramos valores
const nombre = "Éxarion";
const arma_principal = "Espada del Destino";
let arma_secundaria = "Arco simple";
let nivel = 5;
let puntos_de_vida = 100;
let armadura = true;

//Mostramos por pantalla
console.log(`Estado del héroe: `);
console.log(`Nombre: ${nombre}`);
console.log(`Nivel: ${nivel}`);
console.log(`Puntos de vida: ${puntos_de_vida}`);
console.log(`Arma principal: ${arma_principal}`);
console.log(`Arma secundaria: ${arma_secundaria}`);
console.log(`Tiene armadura: ${armadura}`);

//Héroe después del combate
nivel++;
puntos_de_vida -= 30;
//Volvemos a mostrar por pantalla
console.log(`Estado del héroe después del combate: /n Nombre: ${nombre} /n Nivel: ${nivel} /n Puntos de vida: ${puntos_de_vida} /n Arma principal: ${arma_principal} /n Arma secundaria: ${arma_secundaria} /n Tiene armadura: ${armadura}`);

