
//iniciar variáveis

//controles
direita		= noone;
esquerda	= noone;
cima		= noone;
baixo		= noone;

//velocidade
vel		= 2;
velh	= 0;
velv	= 0;
dir		= 1;
estado	= 0;

//Método para movimentação

	direita	 = keyboard_check(ord("D"));
	esquerda = keyboard_check(ord("A"));
	cima	 = keyboard_check(ord("W"));
	baixo	 = keyboard_check(ord("S"));
	correr	 = keyboard_check_pressed(vk_shift);
	
	if(direita xor esquerda or cima xor baixo)
	{
		var _dir = point_direction(0, 0, direita - esquerda, baixo - cima);
		
		look_dir = _dir
		//aplicando a velocidade horizontal
		velh = lengthdir_x(vel, _dir);
	
		//aplicando a velocidade vertical
		velv = lengthdir_y(vel, _dir);
	}
	else //se não está apertando tecla
	{
		velh = 0;
		velv = 0;
	}



	