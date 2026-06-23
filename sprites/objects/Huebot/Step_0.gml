velocidadX = direcc * velocidad_enemigo;
velocidadY = grav;

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