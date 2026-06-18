#region Gravedad
if (!collision_rectangle(x-ancho,y,x+ancho,y+1,Objwall,true,false) || vspeed != 0){
	
	gravity=0.4;
	
	sprite_index=SprSonicJump;
}
if (vspeed>0){
	var ground = collision_rectangle(x-8,y,x+8,y+vspeed,Objwall,true,false);
	
		if (ground){
			if  (y <= ground.y + 3 && y + vspeed >= ground.y)
			
		y=ground.y;
		
		vspeed=0;
		
		gravity=0;
	}
}else if (vspeed<0){
	var ceiling = collision_rectangle(x-8,y-40,x+8,y-40+vspeed,Objwall,false,false);
	
		if (ceiling && (!variable_instance_exists(ceiling, "onesided") || ceiling.onesided == false)){
			
		y=ceiling.y + ceiling.sprite_height+40;
		
		vspeed=0;
	}
}
#endregion

#region Colision Plataforma

var platform=collision_rectangle(x-ancho,y,x+ancho,y+15,ObjMovingplatform,true,true);
	if (platform && vspeed == 0) {
		x += platform.hspeed;
		
		y+= platform.vspeed;	
}
#endregion}
