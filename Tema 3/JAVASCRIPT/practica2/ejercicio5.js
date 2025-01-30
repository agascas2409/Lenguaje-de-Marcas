//Ejercicio 5

let puntosActuales;
let cura;

function curar(puntosActuales, cura){
    let puntos = Math.min(puntosActuales+cura, 100);
    return puntos;
};

let puntos = curar(50, 10);
console.log(puntos);

let puntos2 = curar(60, 20);
console.log(puntos2);

let puntos3 = curar(70, 30);
console.log(puntos3);