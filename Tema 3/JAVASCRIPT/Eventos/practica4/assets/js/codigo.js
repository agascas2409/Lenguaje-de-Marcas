//Capa 1
const a1 = document.querySelector(".color");
//Cambia el color el parrafo al entrar y salir el raton
a1.addEventListener("mouseenter", () => {a1.style.color="red"});
a1.addEventListener("mouseleave", () => {a1.style.color="black"});

//Capa 2
const a2 = document.querySelector(".imagen");
const img = document.querySelector(".img");
//Cambiar la imagen cuando pase el cursor
a2.addEventListener("mouseenter", () => cambiarImagen(img));
function cambiarImagen(img){   
    const nombreImagen = img.src.split("/").pop();
    if (nombreImagen == "corazon.png"){
        img.src = "./assets/img/rosa.jpg";
    } else {
        img.src = "./assets/img/corazon.png";
    }
}

//Capa 3
const a3 = document.querySelector(".edad");
const boton = document.querySelector(".botonEdad");
//Comprueba que la edad esta en el rango
boton.addEventListener("click", () => calcular());
function calcular(){
    const texto = document.querySelector(".texto");
    texto.textContent = "";
    const num = document.querySelector("#num");
    let edad = parseInt(num.value);

    if(isNaN(edad)){
        texto.textContent = "Introduce un número válido";
        a3.style.color = "red";
    } else {
        if (edad >= 1 && edad <= 100){
            texto.textContent = "Número correcto";
            a3.style.color = "green";
        }  else {
            texto.textContent = "Introduce un valor entre 1 y 100";
            a3.style.color = "red";
        }
    }
}

//Capa 4
const a4 = document.querySelector(".cambiarColor");
const a6 = document.querySelectorAll(".negro");
//Cambia fondo negro o rojo
a4.addEventListener("click", () => cambiarFondo(a6));
function cambiarFondo(a6){
    a6.forEach((fondo) => {fondo.classList.toggle("rojo")});
}

//Capa 5
const a5 = document.querySelector(".cambiarEstilo");
const boton1 = document.querySelector(".boton1");
const boton2 = document.querySelector(".boton2");
const boton3 = document.querySelector(".boton3");
//Cambiar estilo segun el boton que se pulse
boton1.addEventListener("click", () => {
    a5.style.color = "white";
    a5.style.backgroundColor = "black";
});
boton2.addEventListener("click", () => {
    a5.style.color = "black";
    a5.style.backgroundColor = "white";
});
boton3.addEventListener("click", () => {
    a5.style.color = "red";
    a5.style.backgroundColor = "grey";
});