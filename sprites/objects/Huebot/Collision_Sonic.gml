var _jugador = instance_place(x, y, Sonic);
if (_jugador = instance_place(x, y-2, Sonic)){
    if (_jugador.vspeed > 0) {
		instance_destroy();
		audio_play_sound(Sd_muertenemigo,10,false);
		_jugador.vspeed = -5; // El jugador rebota
	}
	audio_stop_sound (Sd_muertenemigo);
}