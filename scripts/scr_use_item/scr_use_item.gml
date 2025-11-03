/*function scr_use_item(){
	switch (argument0)
	{

   case "energetico":
        global.bpm += 50;
        break;

    case "cafe":
        global.bpm += 10;
        break;

    case "cigarro":
        global.bpm -= 15;
        break;

    case "chiclete":
        global.bpm -= 5;
        break;

    default:
        show_debug_message("Item desconhecido: " + string(argument0));
        break;
	}
}
*/
function scr_use_item() {
    switch (argument0) {
        case "energetico":
            oPlayer.bpm_target += 50;
            break;

        case "cafe":
            oPlayer.bpm_target += 30;
            break;

        case "cigarro":
            oPlayer.bpm_target -= 50;
            break;

        case "chiclete":
            oPlayer.bpm_target -= 25;
            break;

        default:
            show_debug_message("Item desconhecido: " + string(argument0));
            break;
    }

    // Garante que o bpm_target não saia dos limites
   oPlayer.bpm_target = clamp(oPlayer.bpm_target, oPlayer.bpm_min, oPlayer.bpm_max);
}
