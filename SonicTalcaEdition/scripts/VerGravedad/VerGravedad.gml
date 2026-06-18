function VerGravedad(ancho){
if (!collision_rectangle(x-ancho,y,x+ancho,y+1,Objwall,false,false) || vspeed != 0){
gravity=0.4;
sprite_index=SprSonicJump;
}
}