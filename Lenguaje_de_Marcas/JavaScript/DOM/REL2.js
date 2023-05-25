function mostrarHora() {
  var fecha = new Date();
  var horas = fecha.getHours();
  var minutos = fecha.getMinutes();
  var segundos = fecha.getSeconds();
  var horaCompleta = [
    obtenerImagen(Math.floor(horas / 10)), // First digit of hours
    obtenerImagen(horas % 10), // Second digit of hours
    obtenerImagen("."), // Colon separator
    obtenerImagen(Math.floor(minutos / 10)), // First digit of minutes
    obtenerImagen(minutos % 10), // Second digit of minutes
    obtenerImagen("."), // Colon separator
    obtenerImagen(Math.floor(segundos / 10)), // First digit of seconds
    obtenerImagen(segundos % 10) // Second digit of seconds
  ];
  return horaCompleta;
}

function obtenerImagen(digito) {
  var rutaImagen = "img/" + digito + ".png";
  return '<img src="' + rutaImagen + '">';
}


setInterval(function() {
  var horaActual = mostrarHora();
  document.getElementById("reloj").innerHTML = horaActual.join("");
}, 1000);