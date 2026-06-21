
var distancia= point_distance(x,y,Sonic.x,Sonic.y)
if (distancia<rango_vision){
x=x+distancia*velocidad_enemigo;
}	

if (distancia !=0){
	if(place_free(x +distancia*velocidad_enemigo,y)) {
		velocidad_enemigo=velocidad_enemigo+Aceleracion
		if  (velocidad_enemigo<limiteX){
			x+= distancia * velocidad_enemigo;
		}else if (velocidad_enemigo>limiteX){
			velocidad_enemigo=limiteX;
			x+= distancia * velocidad_enemigo;
		}
		}
		image_xscale=distancia;
		sprite_index=SprHuebotRun;
	} 
	else {
		sprite_index=SprHueBot}
if (!place_meeting(x, y + 1, Ob_muro)) {
    y += 4; 
}
x += velocidad_enemigo * distancia;

// 3. Rebotar en las paredes
if (place_meeting(x + distancia, y, Ob_muro)) {
    distancia *= -1; // Cambia de dirección
}

// 4. Morir aplastado si el jugador salta encima
var _jugador = instance_place(x, y - 1, Sonic);
if (_jugador != noone) {
    if (_jugador.vspeed > 0) {
        instance_destroy(); // El huebot muere
        _jugador.vspeed = -5; // El jugador rebota
    } else {
        // El jugador recibe daño
    }
}
