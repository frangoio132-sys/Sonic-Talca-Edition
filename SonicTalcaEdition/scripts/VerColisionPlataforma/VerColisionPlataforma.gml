function VerColisionPlataforma(ancho){
var platform=collision_rectangle(x-ancho,y,x+ancho,y+15,ObjMovingplatform,true,true);
if (platform && vspeed == 0) {
x += platform.hspeed;
y+= platform.vspeed;	
}
}