global.layer_de_colisao = layer_tilemap_get_id(layer_get_id("layer_solid"))
global.layer_de_agua = layer_tilemap_get_id(layer_get_id("layer_water"))
state = ST.AGUA //Estado Inicial padrão

hsp = 0 //VELOCIDADE HORIZONTAL
vsp = 0 //VELOCIDADE VERTICAL
timer = 10 //TIMER DE 10 SEGUNDOS
invencivel = false
timer_invencivel = 0 //Variável para controlar tempo de invencibilidade
vel_piscar = 8; // Qunato maior mais lento o sprite pisca
timer_piscar = 0;
global.hp = 5 //Vida atual
global.max_hp = 5 //Vida máxima

inv = [NOITEM,NOITEM,NOITEM,NOITEM,NOITEM] // Array de structs vazios
item_index = 0
#region Variáveis de Direção

global.left = false 
global.right = false
global.up = false
global.down = false
global.interact = false
global.quit = false
global.use = false

#endregion

