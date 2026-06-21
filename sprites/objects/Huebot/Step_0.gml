var distancia= point_distance(x,y,Sonic.x,Sonic.y)

if (distancia<rango_vision){
var direccion=sign(Sonic.x-x)
x=x+direccion*velocidad_enemigo;
	
}
if (distancia !=0){
	if(place_free(x + distancia*velocidad,y)) {
		velocidad=velocidad+Aceleracion
		if  (velocidad<limiteX){
			x+= distancia * velocidad;
		}else if (velocidad>limiteX){
			velocidad=limiteX;
			x+= distancia * velocidad;
		}
		}
		image_xscale=huebot;
		sprite_index=SprHuebotRun;
	} 
	else {
		sprite_index=SprHueBot}
if (!place_meeting(x, y + 1, obj_muro)) {
    y += 4; 
}
x += velocidad * direccion;

// 3. Rebotar en las paredes
if (place_meeting(x + direccion, y, obj_muro)) {
    direccion *= -1; // Cambia de dirección
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