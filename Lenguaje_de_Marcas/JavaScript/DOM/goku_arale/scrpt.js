var imagen=1;

function cambiarImagen() {
	if(imagenes == 1){
        imagen=2;
        document.getElementById("imagen").src="goku.png"
    }
    else (imagenes == 2){
        imagen=1;
        document.getElementById("imagen").src="arale.png"
    }
}

setInterval(cambiarImagen, 1000);