window_set_size(1280,720)
look_dir = 0;
vel		= 2;
vel_correndo = 3.5;
esta_correndo = false;



//lanterna
lanterna_ativa	= false;
bateria_atual	= 100;
max_bateria		= 100;
taxa_consumo	= 0.005;


global.bpm = 130;                // BPM inicial normal
bpm_min = 40;            // Limite inferior (muito baixo)
bpm_max = 200;           // Limite superior (infarto)
bpm_target = global.bpm;        // Meta para o BPM atual (para suavizar mudanças)
bpm_change_rate = 0.005;   // Velocidade com que o BPM se aproxima da meta

//cria o inventario
inventory = ds_list_create();
max_inventory = 5;

// Controles
pickup_range = 32;

