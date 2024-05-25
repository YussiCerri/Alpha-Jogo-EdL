//Chamada a script que recebe as entradas
obter_entrada();

state = position_meeting(x,y, global.layer_de_agua)? ST.AGUA : ST.TERRA

switch(state){
	case ST.TERRA:
		player_ativo_terra()
		break
	case ST.AGUA:
		player_ativo_agua()
		break
}
	if keyboard_check(ord("R")){game_restart()}