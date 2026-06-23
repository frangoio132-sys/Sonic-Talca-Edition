#region Movimiento Horizontal 
 var sonic=keyboard_check(vk_right) - keyboard_check(vk_left);
	
	if (sonic !=0){
		if(place_free(x + sonic*velocidad,y)) {
		velocidad=velocidad+Aceleracion
		if  (velocidad<limiteX){
			x+= sonic * velocidad;
		}else if (velocidad>limiteX){
			velocidad=limiteX;
			x+= sonic * velocidad;
		}
		}
		image_xscale=sonic;
		
		sprite_index=SprSonicCorriendo;
	} else {
		sprite_index=SprSonic;
	}
	if (sonic=0){
	velocidad=5;
}
#endregion

#region Salto
	if (keyboard_check_pressed(vk_space)){
		if (collision_rectangle(x-8,y,x+8,y+1,Ob_muro,false,false) && vspeed==0){
		 vspeed = -9;
	}
}
#endregion 

#region Daño enemigos
//Huebot
if (place_meeting(x+ sign(velocidadX),y - 1, Huebot))
{
	Golpe()
}


if(!Herido)
{
	if (parpadeando)
	{
		image_alpha -= 0.1;
		
		if (image_alpha<=0.1)
		parpadeando=false;
	}
}else
{
	image_alpha += 0.1;
		
		if (image_alpha>=1)
		parpadeando=true;
}
//Fly Huebot
if (place_meeting(x+ sign(velocidadX),y - 1,FlyHueBot))
{
	Golpe()
}


if(!Herido)
{
	if (parpadeando)
	{
		image_alpha -= 0.1;
		
		if (image_alpha<=0.1)
		parpadeando=false;
	}
}else
{
	image_alpha += 0.1;
		
		if (image_alpha>=1)
		parpadeando=true;
}
//Jefe
if (place_meeting(x+ sign(velocidadX),y - 1, Jefe))
{
	Golpe()
}


if(!Herido)
{
	if (parpadeando)
	{
		image_alpha -= 0.1;
		
		if (image_alpha<=0.1)
		parpadeando=false;
	}
}else
{
	image_alpha += 0.1;
		
		if (image_alpha>=1)
		parpadeando=true;
}

#endregion

if (vspeed<-28){
vspeed=-28;
}
if(!instance_exists(Jefe)){
	room_goto(RoomVictoria)
	
}
if (Svida==0){
room_goto(RoomDerrota)
}