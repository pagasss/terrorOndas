var bar_width = 100;
var bar_height = 10;
var bar_x = 10;
var bar_y = 10;
var current_width = (oPlayer.bateria_atual / oPlayer.max_bateria) * bar_width;

draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

draw_set_color(c_green); // Cor verde para bateria cheia
if (oPlayer.bateria_atual < oPlayer.max_bateria * 0.5) draw_set_color(c_yellow); // Amarelo se estiver abaixo de 50%
if (oPlayer.bateria_atual < oPlayer.max_bateria * 0.2) draw_set_color(c_red); // Vermelho se estiver abaixo de 20%

draw_rectangle(bar_x, bar_y, bar_x + current_width, bar_y + bar_height, false);

draw_set_color(c_white);
draw_text(bar_x, bar_y + 15, "Bateria: " + string(round(oPlayer.bateria_atual)) + "%");
draw_text(50, 100, "BPM: " + string_format(global.bpm, 3, 0));