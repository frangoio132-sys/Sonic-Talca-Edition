if (keyboard_check(vk_left)=true){
	x=x-velocidadX
}
if (keyboard_check(vk_right)=true){
	x=x+velocidadX
}

if (!place_meeting(x , y+1, Object1)){
velocidady =velocidady +gravedad;
}
else{
	velocidady =0;
	}
y = y+ velocidady;

if ( place_meeting(x , y+velocidady, Object1)){
while (!place_meeting(x, y + sign(velocidady), Object1)){
	y = y + sign(velocidady);
}
velocidady=0;
}
if ( place_meeting(x , y+velocidady, Object1)){
while (!place_meeting(x, y + sign(velocidady), Object1)){
	y = y + sign(velocidady);
}
velocidady=0;
}