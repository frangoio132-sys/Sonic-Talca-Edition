var _jugador = instance_place(x, y, Sonic);
if (_jugador = instance_place(x, y-2, Sonic)){
    if (_jugador.vspeed > 0) {
		hp -= 1
		_jugador.vspeed = -5; // El jugador rebota
	}
}
if (hp == 0){
instance_destroy();	
}