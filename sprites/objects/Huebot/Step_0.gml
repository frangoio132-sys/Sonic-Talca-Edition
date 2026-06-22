
var distancia= point_distance(x,y,Sonic.x,Sonic.y)
if (distancia<rango_vision){
x=x+distancia*velocidad_enemigo;
}	

if (distancia !=0){
		image_xscale=distancia;
		sprite_index=SprHuebotRun;
	} 
	else {
		sprite_index=SprHueBot}
if (!place_meeting(x, y + 1, Ob_muro)) {
    y += 4; 
}
if (place_meeting(x + distancia, y, Ob_muro)) {
    distancia *= -1; // Cambia de dirección
}

var _jugador = instance_place(x, y - 1, Sonic);
if (_jugador != noone) {
    if (_jugador.vspeed > 0) {
        instance_destroy(); // El huebot muere
        _jugador.vspeed = -5; // El jugador rebota
    } else {
        other.Svida -=1
    }
}