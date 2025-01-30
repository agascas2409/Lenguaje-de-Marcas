//Ejercicio 3

let dificultad = 1;
let experienciaActual = 90;
let experienciaGanada = 30;
let experienciaParaSubirNivel = 100;

//Calcular si el heroe sube de nivel
experienciaActual += experienciaGanada;
if (experienciaActual >= experienciaParaSubirNivel){
    dificultad++;
    experienciaActual -= experienciaParaSubirNivel;
};

switch(dificultad){
    case 1:
        console.log(`Nivel: Novato`);
        break;
    case 2:
        console.log(`Nivel: Medio`);
        break;
    case 3:
        console.log(`Nivel: Profesional`);
        break;
    default:
        console.log(`No sabes jugar`);
}

console.log(`Experiencia Actual: ${experienciaActual}`);