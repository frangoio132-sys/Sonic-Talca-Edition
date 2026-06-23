var _jugador = instance_place(x, y, Sonic);
if (_jugador = instance_place(x, y-3, Sonic)){
    if (_jugador.vspeed > 0) {
		hp-=1
		if (hp==0){
		instance_destroy();
		}
		_jugador.vspeed = -5; // El jugador rebota
	}
}