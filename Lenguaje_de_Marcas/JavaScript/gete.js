document.getElementById("demo").innerHTML = "My First JavaScript"

let numero = prompt("ahora un numero");

if (numero < 10) {
    document.getElementById("resultado").innerHTML = "Alex";
    document.getElementById("resultado").className = "verd";
} 
else {
    document.getElementById("resultado").innerHTML = "Alex Vives";
    document.getElementById("resultado").className = "red";
}