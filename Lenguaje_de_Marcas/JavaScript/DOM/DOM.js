function mostrarHora() {
    var fecha = new Date();
    var horas = fecha.getHours();
    var minutos = fecha.getMinutes();
    var segundos = fecha.getSeconds();
    var horaCompleta = horas + ":" + minutos.toString().padStart(2, "0") + ":" + segundos;
    return horaCompleta;
  }

  setInterval(function() {
    var horaActual = mostrarHora();
    document.getElementById("digitos").innerHTML = horaActual;
  }, 1000);


