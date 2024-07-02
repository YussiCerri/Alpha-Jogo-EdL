/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.dialogos_por_tipo = ds_map_create();

// Armazena os diálogos para Placa do tipo 1
dialogos_placa_1 = ds_list_create();
ds_list_add(dialogos_placa_1, "Olá! Esta é a placa 1.");
ds_list_add(dialogos_placa_1, "Aqui está outra mensagem.");
ds_list_add(dialogos_placa_1, "Última mensagem da placa 1.");

// Armazena os diálogos para Placa do tipo 2
dialogos_placa_2 = ds_list_create();
ds_list_add(dialogos_placa_2, "Olá! Esta é a placa 2.");
ds_list_add(dialogos_placa_2, "Outra mensagem da placa 2.");
ds_list_add(dialogos_placa_2, "Última mensagem da placa 2.");

// Armazena os diálogos para cada tipo no mapa
ds_map_add_list(global.dialogos_por_tipo, 1, dialogos_placa_1);
ds_map_add_list(global.dialogos_por_tipo, 2, dialogos_placa_2);

// Armazena diálogos padrão para placas de tipo desconhecido
dialogos_generico = ds_list_create();
ds_list_add(dialogos_generico, "Esta é uma placa genérica.");
ds_map_add_list(global.dialogos_por_tipo, 0, dialogos_generico);