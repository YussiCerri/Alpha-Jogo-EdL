switch(state){
	case ST.PAUSA:
		if place_meeting(x,y,obj_player){
			draw_sprite(spr_interact,0,x,y-32)
		}
		exit
	default:
		draw_loja()
		break
}