//Chamada a script que recebe as entradas
obter_entrada();

state = position_meeting(x,y, global.layer_de_agua)? ST.AGUA : ST.TERRA
player_ativo_agua()