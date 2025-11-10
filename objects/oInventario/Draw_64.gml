// --- Mini Inventário ---
var slot_size = 48;        // tamanho de cada slot
var padding = 8;           // espaçamento entre slots
var total_width = (slot_size + padding) * oPlayer.max_inventory - padding
//var x_start = 20;          // posição inicial X
//var y_start = 20;          // posição inicial Y
// Centraliza horizontalmente
var x_start = (display_get_gui_width() - total_width) / 2;

// Posiciona na parte inferior da tela
var y_start = display_get_gui_height() - slot_size - 20;
var radius = slot_size / 2;

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fonte_irada_inventario)
draw_text(x_start, y_start - 20, "Inventário:");

/*// Desenha os slots
for (var i = 0; i < oPlayer.max_inventory; i++) {
    var x_slot = x_start + (slot_size + padding) * i;
    var y_slot = y_start;

    // fundo do slot
    draw_set_color(make_color_rgb(30, 30, 30));
    draw_rectangle(x_slot, y_slot, x_slot + slot_size, y_slot + slot_size, false);*/
	
	// --- Fundo geral do inventário ---
draw_set_alpha(0.4);
draw_set_color(make_color_rgb(10, 10, 10));
draw_roundrect(x_start - 20, y_start - 20, x_start + total_width + 20, y_start + slot_size + 20, false);
draw_set_alpha(1);

// --- Desenha slots redondos ---
for (var i = 0; i < oPlayer.max_inventory; i++) {
    var x_slot = x_start + (slot_size + padding) * i + radius;
    var y_slot = y_start + radius;

    // fundo do círculo
    draw_set_color(make_color_rgb(40, 40, 40));
    draw_circle(x_slot, y_slot, radius, false);

    // se tiver item, desenha o ícone
    if (i < ds_list_size(oPlayer.inventory)) {
        var item_type = oPlayer.inventory[| i];
        var spr = -1;

        // escolhe o sprite conforme o item
        switch (item_type) {
            case "energetico": spr = spr_item_energetico; break;
            case "cafe": spr = spr_item_cafe; break;
            case "cigarro": spr = spr_item_cigarro; break;
            case "chiclete": spr = spr_item_chiclete; break;
        }

        if (spr != -1) {
			    var spr_w = sprite_get_width(spr);
    var spr_h = sprite_get_height(spr);
    var scale = min((slot_size * 0.9) / spr_w, (slot_size * 0.9) / spr_h);

    draw_sprite_ext(
        spr,
        0,
        x_slot,
        y_slot,
        scale,
        scale,
        0,
        c_white,
        1
    );
            //draw_sprite_ext(spr, 0, x_slot + slot_size / 2, y_slot + slot_size / 2, 1, 1, 0, c_white, 1);
        }
    }

    // borda do slot
    draw_set_color(c_white);
    draw_circle(x_slot, y_slot, radius, true);
	//draw_rectangle(x_slot, y_slot, x_slot + slot_size, y_slot + slot_size, true);
}

