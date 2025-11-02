var direita, esquerda, cima, baixo;
var correr;

//controles
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));
cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));
correr = keyboard_check_pressed(vk_shift);
//velocidade
var vel =  1;

//movimentação 

if(direita)
	{
		x+=vel
	}
	else if(esquerda){
		x-=vel
	}
	else if(cima){
		y-=vel
	}
	else if(baixo){
		y+=vel
	}
	else{
	vel = 0;
	}
	
	
/*
switch (estado){
	case"parado":
	{
		//sprite dele parado
	}
	case"andando":
	{
			if (direita or esquerda or cima or baixo){
				//muda o sprite
				
			} 
	}
}


	