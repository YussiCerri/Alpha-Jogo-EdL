draw_self()
switch(state){
	case ST.PAUSA:
		if p_meet{
			draw_sprite(spr_interact,0,x,y-32)
		}
		break
	default:
		draw_loja()
		break
}