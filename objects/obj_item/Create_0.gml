// Define o tipo do item
// (pode mudar no editor pra "energetico", "cafe", etc.)
// Tipo do item (pode ser mudado no editor ou dinamicamente)
// Só define um valor padrão SE a variável ainda não existir
if (!variable_instance_exists(id, "item_type")) {
    item_type = "energetico"; 
}

// Define o sprite conforme o tipo
switch (item_type) {
    case "energetico":
        sprite_index = spr_item_energetico;
        break;
    case "cafe":
        sprite_index = spr_item_cafe;
        break;
    case "cigarro":
        sprite_index = spr_item_cigarro;
        break;
    case "chiclete":
        sprite_index = spr_item_chiclete;
        break;
    default:
        sprite_index = spr_item; // sprite genérico
        break;
}

