function VerColisionTecho(ancho, alto){
var ceiling = collision_rectangle(x-ancho,y-alto,x+ancho,y-alto+vspeed,Objwall,false,false);
if (ceiling && (!variable_instance_exists(ceiling, "onesided") || ceiling.onesided == false)){
y=ceiling.y + ceiling.sprite_height+40;
vspeed=0;
}
}