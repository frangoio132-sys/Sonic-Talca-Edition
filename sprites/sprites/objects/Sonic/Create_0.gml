//Vida
Svida=3;
//velocidad
velocidad=5;
velocidadX=velocidad;
//Limite velocidad X e Y
limiteX=16;
limiteY=16;

//Aceleracion
Aceleracion=0.04;
Desaceleracion=0.5;

//Monedas
coleccionable=0;

//Dimensiones
altura=42;
ancho=22;

Herido=true;
parpadeando=true;


Golpe = function()
{
	if(Herido)
	{
		Svida-=1;
		Herido=false;
		alarm[0] = 90;
		
	}
}