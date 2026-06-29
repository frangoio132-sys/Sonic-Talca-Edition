velocidadX = direcc * velocidad_enemigo;

if (place_meeting(x + velocidadX, y, Ob_muro)){
	while (!place_meeting(x + sign(velocidadX), y, Ob_muro)){
	x +=sign(velocidadX);	
	}
velocidadX=0;
direcc=-1;
}
x += velocidadX;

if (place_meeting(x + velocidadX, y, Ob_Limite)){
	while (!place_meeting(x + sign(velocidadX), y, Ob_Limite)){
	x +=sign(velocidadX);	
	}
velocidadX=0;
direcc=-1;
}

if (place_meeting(x, y + velocidadY, Ob_muro)){
	while (!place_meeting(x, y + sign(velocidadY), Ob_muro)){
	y +=sign(velocidadY);	
	}
velocidadY=0;
}
y += velocidadY;

if (velocidadX !=0){
image_xscale= sign(velocidadX);	
}

//Jose

if (instance_exists(Sonic)) {
    var distancia_x = abs(x - Sonic.x);
    var enemigo_arriba = y < Sonic.y;
	
    if (distancia_x <= rango_deteccion && enemigo_arriba) {     
		
        if (puede_disparar) {
            var bala = instance_create_layer(x, y + 16, "Instances", Ob_Yema);
			bala.direction = 270;
			bala.speed = 4;
			audio_play_sound(Sd_disparo,10,false);
            puede_disparar = false;
            alarm[0] = tiempo_disparo; 
        }
    }
}
