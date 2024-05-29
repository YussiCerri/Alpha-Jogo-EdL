p_meet = place_meeting(x,y,obj_player)
switch(state){
	case ST.PAUSA:
		loja_inativa()
		break
	default:
		loja_ativa()
		break
}