if (keyboard_check(vk_left)=true){
	
	if (place_meeting(x-velocidadX,y,Objwall)=true){
	//velocidadX=0
	while (!place_meeting(x+sign(velocidadX),y,Objwall)){
		x+=sign(velocidadX);
	}
	velocidadX=0
	}
	
		x -= velocidadX;
if (place_meeting(x,y,Objwall)=true){
	x=x+1;	
}
}




if (keyboard_check(vk_right)=true){
x = x + velocidadX;	
}





y=y+velocidadY;
if (!place_meeting(x,y+1,Objwall)){
velocidadY = velocidadY + gravedad;
}else{
velocidadY=0;
}
if (place_meeting(x,y+velocidadY,Objwall)){
	while (!place_meeting(x,y+sign(velocidadY),Objwall)){
	y=y+sign(velocidadY);
	}
	velocidadY=0
}
if (place_meeting(x,y+1,Objwall)){
	if (keyboard_check(vk_up)=true){
velocidadY=-VelocidadSalto;
	}
}
