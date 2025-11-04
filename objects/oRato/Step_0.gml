//Verifica se o jogador (oPlayer) existe na sala

if (instance_exists(oPlayer)) {
	
	//calcula distancia
	var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
	
	//verifica se o player está dentro do raio de percepção
	if(dist < distancia_percepcao) {
		var direcao_alvo = point_direction(x, y, oPlayer.x, oPlayer.y);
		//move em direção ao player
		direction = direcao_alvo;
		speed = velocidade_movimento;
	
	} else {
		speed = 0
	}
}