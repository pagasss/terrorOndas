if (instance_place(x+1, y+1, oPlayer)){
	oLanterna.bateria_atual += carga; // Adiciona carga (ajuste o valor)
    if (oLanterna.bateria_atual > oLanterna.max_bateria)
    {
       oLanterna.bateria_atual = oLanterna.max_bateria;
    }

	instance_destroy()
}