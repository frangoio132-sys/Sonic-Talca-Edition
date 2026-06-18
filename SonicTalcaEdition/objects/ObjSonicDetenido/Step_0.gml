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
		sprite_index=SprSonic	
	}
	if (sonic=0){
	velocidad=5;
}
#endregion

#region Salto
	if (keyboard_check_pressed(vk_space)){
		if (collision_rectangle(x-8,y,x+8,y+1,Objwall,false,false) && vspeed==0){
		 vspeed = -7;
	}
}
#endregion 

if(coleccionable>=7){
	room_goto(RoomVictoria)
	
}
if (Svida==0){
room_goto(roomPerdida)
}