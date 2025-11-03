// 1 — Criar surface se não existe

	if (!surface_exists(surf)) {
	    surf = surface_create(room_width, room_height);
	}

	// 2 — Desenhar o ESCURO na surface
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0.9);  // 0.9 = quão escuro fica

	gpu_set_blendmode(bm_subtract);


	if (oPlayer.lanterna_ativa)
	{
	draw_sprite_ext(
	    sLuz,
	    0,
	    oPlayer.x,
	    oPlayer.y,
	    1, 1,                 // escala (ajuste depois)
	    oPlayer.look_dir,     // <-- direção da lanterna
	    c_white,
	    1
	);

	gpu_set_blendmode(bm_normal);
	
	}
	
	
	surface_reset_target();

	// 6 — Agora desenha a surface na tela
	draw_surface(surf, 0, 0);
	
	if (!oPlayer.lanterna_ativa && surface_exists(surf)) {
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0.9);
    surface_reset_target();
}
