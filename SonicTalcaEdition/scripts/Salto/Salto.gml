function Salto(ancho){
if (collision_rectangle(x-ancho,y,x+ancho,y+1,Objwall,false,false) && vspeed==0){
 vspeed = -7;
	}
}