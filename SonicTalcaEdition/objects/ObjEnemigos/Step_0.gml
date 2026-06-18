var distancia= point_distance(x,y,ObjSonicDetenido.x,ObjSonicDetenido.y)

if (distancia<rango_vision){
var direccion=sign(ObjSonicDetenido.x-x)
x=x+direccion*velocidad_enemigo;
	
}