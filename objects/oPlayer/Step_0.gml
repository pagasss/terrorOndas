
//iniciar variáveis

//controles
direita		= noone;
esquerda	= noone;
cima		= noone;
baixo		= noone;
var dt = delta_time / 10000

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
		if (oLanterna.bateria_atual > 0){
			//inverte o valor(liga e desliga)
			oLanterna.lanterna_ativa = !oLanterna.lanterna_ativa;
		} else 
		{
			oLanterna.lanterna_ativa = false;
		}

	}
	if (oLanterna.lanterna_ativa) {
		oLanterna.bateria_atual -= oLanterna.taxa_consumo; //reduz a bateria
		
			if (oLanterna.bateria_atual <= 0){
				oLanterna.bateria_atual = 0;
				oLanterna.lanterna_ativa = false;
			}
	}

#region
// Faz o BPM se aproximar do bpm_target aos poucos (suavização)
global.bpm += (bpm_target - global.bpm) * bpm_change_rate * delta_time / 1000000

// Ajusta a velocidade de movimento conforme o BPM
if (esta_correndo) bpm_target += 0.05 * dt;

// Decaimento natural do BPM com o tempo
if (bpm_target > 80) bpm_target -= 0.01 * dt; 
else if (bpm_target < 80) bpm_target += 0.01 * dt;

// Limita o BPM entre o mínimo e o máximo
global.bpm = clamp(global.bpm, bpm_min, bpm_max);

// Efeitos de BPM extremos
if (global.bpm >= bpm_max) {
    show_debug_message("INFARTO! Game Over!");
    instance_destroy(); // ou trigger de morte
}

if (global.bpm <= bpm_min) {
    show_debug_message("Desmaio! Visão turva...");
    // Aqui pode ativar um efeito de tela
}
#endregion

/// --- Pegar item com E ---
if (keyboard_check_pressed(ord("E"))) {
    var item = instance_nearest(x, y, obj_item);
    if (item != noone && point_distance(x, y, item.x, item.y) < pickup_range) {
        if (ds_list_size(inventory) < max_inventory) {
            ds_list_add(inventory, item.item_type);
            show_debug_message("Pegou: " + string(item.item_type));
            instance_destroy(item);
        } else {
            show_debug_message("Inventário cheio!");
        }
    }
}

/// --- Usar item (exemplo: teclas 1 a 5) ---
for (var i = 0; i < ds_list_size(inventory); i++) {
    if (keyboard_check_pressed(ord("B"))) {
        var item_type = inventory[| i];
        scr_use_item(item_type);
        ds_list_delete(inventory, i); // remove item após uso
        break;
    }
}

	