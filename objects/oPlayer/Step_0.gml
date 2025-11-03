
//iniciar variáveis

//controles
direita		= noone;
esquerda	= noone;
cima		= noone;
baixo		= noone;

//velocidade

velh	= 0;
velv	= 0;
dir		= 1;
estado	= 0;

//Método para movimentação

	direita			= keyboard_check(vk_right) or keyboard_check(ord("D"));
	esquerda		= keyboard_check(vk_left) or keyboard_check(ord("A"));
	cima			= keyboard_check(vk_up) or keyboard_check(ord("W"));
	baixo			= keyboard_check(vk_down) or keyboard_check(ord("S"));
	esta_correndo	= keyboard_check(vk_shift);
	
//Velocidades
	var vel_atual;
	if(esta_correndo){
		vel_atual = vel_correndo;
	}else{
		vel_atual = vel;
	}

	if(direita xor esquerda or cima xor baixo)
	{
		
		var _dir = point_direction(0, 0, direita - esquerda, baixo - cima);
		
		look_dir = _dir
		//aplicando a velocidade horizontal
		velh = lengthdir_x(vel_atual, _dir);
	
		//aplicando a velocidade vertical
		velv = lengthdir_y(vel_atual, _dir);
	}
	else //se não está apertando tecla
	{
		velh = 0;
		velv = 0;
	}
	
	//liga desliga lanterna
	
	if keyboard_check_pressed(ord("F"))
	{
		if (bateria_atual > 0){
			//inverte o valor(liga e desliga)
			lanterna_ativa = !lanterna_ativa;
		} else 
		{
			lanterna_ativa = false;
		}

	}
	if (lanterna_ativa) {
		bateria_atual -= taxa_consumo; //reduz a bateria
		
			if (bateria_atual <= 0){
				bateria_atual = 0;
				lanterna_ativa = false;
			}
	}



	