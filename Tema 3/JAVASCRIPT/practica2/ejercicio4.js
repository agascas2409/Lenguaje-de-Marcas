//Ejercicio 4

let cofres = [5, 7, 3, 8];
let atuendos = [`Duende`, `Arquero`, `Caballero`];
let monedasTotales = 0;

//Sumamos todas las monedas
cofres.forEach((monedas) => {monedasTotales += monedas});
console.log(`Monedas totales: ${monedasTotales}`);

atuendos.push(`Mago`);
atuendos.forEach((atuendo, indice) => {console.log(`${indice}: ${atuendo}`); });