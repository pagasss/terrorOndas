// Certifique-se de que o objeto controlador (oEscuro) e a surface existam
if (instance_exists(oEscuro) && surface_exists(oEscuro.surf)) {
    // A surface existe, agora podemos pegar o pixel com segurança
    var cor_pixel = surface_getpixel(oEscuro.surf, x, y);
    // Extrai o valor do vermelho (ou verde/azul, pois é monocromático)
    var brilho = color_get_red(cor_pixel); 

    // ... (restante da sua lógica de congelar/mover) ...

    var limiar_luz = 100; 

    if (brilho > limiar_luz) {
        congela = true;
        // ...
    } else {
        congela = false;
        // ...
    }
    
    if (!congela) {
        // Código para movimento
        move_towards_point(oPlayer.x, oPlayer.y, vel_atual);
    } else {
        speed = 0;
    }

} else {
    // Se a surface não existir, o inimigo deve continuar se movendo ou parar?
    // Decida o comportamento padrão. Ex: Apenas parar e esperar.
    speed = 0; 
}