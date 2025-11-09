//// 1 — Criar surface se não existe
if (!surface_exists(surf)) {
    surf = surface_create(room_width, room_height);
}

// 2 — Desenhar o ESCURO na surface
surface_set_target(surf);
draw_clear_alpha(c_black, escuro_alpha);
surface_reset_target();

