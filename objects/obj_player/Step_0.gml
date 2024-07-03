//Chamada a script que recebe as entradas
obter_entrada();
if(timer==0 or global.hp<=0) {matar_player()}
if state == ST.PAUSA exit
//como state é um enum, todos os valores abaixo de morto são estados ativos
if(state < ST.MORTO){
	state = position_meeting(x,y, global.layer_de_agua)? ST.AGUA : ST.TERRA
}

switch(state){
	case ST.TERRA:
		usar_item_atual()
		player_ativo_terra2()
		interagir()
		break
	case ST.AGUA:
		usar_item_atual()
		player_ativo_agua2()
		interagir()
		break
	case ST.MORTO:
		player_morto()
		break
	default: break
}

if(timer==1 and place_meeting(x,y,global.layer_de_agua))
{array_conquistas(0)}