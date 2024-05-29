//Chamada a script que recebe as entradas
obter_entrada();

//como state é um enum, todos os valores abaixo de morto são estados ativos
if(state < ST.MORTO){
	state = position_meeting(x,y, global.layer_de_agua)? ST.AGUA : ST.TERRA
}

switch(state){
	case ST.TERRA:
		player_ativo_terra()
		break
	case ST.AGUA:
		player_ativo_agua()
		break
	case ST.MORTO:
		player_morto()
		break
	default: break
}

if keyboard_check(ord("R")){game_restart()}

if(timer==0 or global.hp<=0) {matar_player()}