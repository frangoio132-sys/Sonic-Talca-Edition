function Movimiento(hor){
if(place_free(x + hor*velocidad,y)) {
		x+= hor * velocidad;
	}
	image_xscale=hor;
}