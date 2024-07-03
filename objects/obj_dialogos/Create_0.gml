/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.dialogos_por_tipo = ds_map_create();

// Armazena os diálogos para Placa do tipo 1
dialogos_placa_1 = ds_list_create();
ds_list_add(dialogos_placa_1, "Use as setas do teclado para se mover.");
ds_list_add(dialogos_placa_1, "Espaço para interagir com objetos.");
ds_list_add(dialogos_placa_1, "Z para utilizar itens e o mouse para atirar com as armas.");
ds_list_add(dialogos_placa_1, "Tenha uma ótima jogatina! :D");


// Armazena os diálogos para Placa do tipo 2
dialogos_placa_2 = ds_list_create();
ds_list_add(dialogos_placa_2, "Loja do Zé Piranha!!!");
ds_list_add(dialogos_placa_2, "Promoções de cair o anzol!!!");
ds_list_add(dialogos_placa_2, "Só entrar nessa caverna nem um pouco suspeita!!.");

dialogos_placa_3 = ds_list_create();
ds_list_add(dialogos_placa_3, "O Monte da Sardinha Enlatada!!");
ds_list_add(dialogos_placa_3, "Uma lenda muito antiga diz que o ser marinho que chegar ao seu topo obterá um poder imenso.");
ds_list_add(dialogos_placa_3, "(Não tente subir, não tem nada lá)");

// Armazena os diálogos para cada tipo no mapa
ds_map_add_list(global.dialogos_por_tipo, 1, dialogos_placa_1);
ds_map_add_list(global.dialogos_por_tipo, 2, dialogos_placa_2);
ds_map_add_list(global.dialogos_por_tipo, 3, dialogos_placa_3);

// Armazena diálogos padrão para placas de tipo desconhecido
dialogos_generico = ds_list_create();
ds_list_add(dialogos_generico, "Esta é uma placa genérica.");
ds_map_add_list(global.dialogos_por_tipo, 0, dialogos_generico);