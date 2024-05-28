p_meet = place_meeting(x,y,obj_player)


switch(state){
	case ST.PAUSA:
		if global.interact and p_meet{
			obj_player.state = ST.PAUSA
			state = ST.AGUA
		}
		break
	default:
		loja_ativa()
		break
}