if (instance_place(x+1, y+1, oPlayer)){
	oPlayer.bateria_atual += carga; // Adiciona carga (ajuste o valor)
    if (oPlayer.bateria_atual > oPlayer.max_bateria)
    {
       oPlayer.bateria_atual = oPlayer.max_bateria;
    }

	instance_destroy()
}