//Ejercicio 5

let puntosActuales = 60;
let cura = 30;

Function curar(puntosActuales, cura){
    let puntos = Math.min(puntosActuales+cura, 100);
    return puntos;
};
