//Chamada a script que recebe as entradas
obter_entrada();
if state == ST.PAUSA exit
//como state é um enum, todos os valores abaixo de morto são estados ativos
if(state < ST.MORTO){
	state = position_meeting(x,y, global.layer_de_agua)? ST.AGUA : ST.TERRA
}

switch(state){
	case ST.TERRA:
		usar_item_atual()
		player_ativo_terra()
		interagir()
		break
	case ST.AGUA:
		usar_item_atual()
		player_ativo_agua()
		interagir()
		break
	case ST.MORTO:
		player_morto()
		break
	default: break
}

if(timer==0 or global.hp<=0) {matar_player()}
