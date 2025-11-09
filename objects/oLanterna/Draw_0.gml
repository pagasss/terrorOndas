if (!lanterna_ativa) exit;

// 1 — referência ao surface
var surface_l = oEscuro.surf;

if (!surface_exists(surface_l)) {
    draw_text(10, 10, "Surface inexistente!");
    exit;
}

// 2 — desenhando no surface
surface_set_target(surface_l);

gpu_set_blendmode(bm_subtract);

// DESENHA A LUZ
draw_sprite_ext(
    luz_sprite,
    0,
    oPlayer.x,
    oPlayer.y,
    escala,
    escala,
    oPlayer.look_dir,
    c_white,
    1
);

gpu_set_blendmode(bm_normal);

surface_reset_target();