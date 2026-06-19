var distancia= point_distance(x,y,Sonic.x,Sonic.y)

if (distancia<rango_vision){
var direccion=sign(Sonic.x-x)
x=x+direccion*velocidad_enemigo;
	
}