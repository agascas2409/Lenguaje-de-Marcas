const p1 = document.querySelector(".niidea");
const b = document.querySelector("body");
const p2 = document.querySelector("#niidea2");

p1.addEventListener("click", () => alert('Parrafo 1 click'));
b.addEventListener("load",() => mensaje);
function mensaje(){
    alert("Pagina cargada");
}
p2.addEventListener("dblclick", () => alert('Doble click'));