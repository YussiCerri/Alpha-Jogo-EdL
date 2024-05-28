global.layer_de_colisao = layer_tilemap_get_id(layer_get_id("layer_solid"))
global.layer_de_agua = layer_tilemap_get_id(layer_get_id("layer_water"))
state = ST.AGUA //Estado Inicial padrão

hsp = 0 //VELOCIDADE HORIZONTAL
vsp = 0 //VELOCIDADE VERTICAL

#region Variáveis de Direção

global.left = false 
global.right = false
global.up = false
global.down = false
global.interact = false

#endregion

