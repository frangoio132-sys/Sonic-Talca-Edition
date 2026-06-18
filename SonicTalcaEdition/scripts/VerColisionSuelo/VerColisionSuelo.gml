function VerColisionSuelo(ancho){
var ground = collision_rectangle(x-ancho,y,x+ancho,y+vspeed,Objwall,false,false);
if (ground){
y=ground.y;
vspeed=0;
gravity=0;
}
}