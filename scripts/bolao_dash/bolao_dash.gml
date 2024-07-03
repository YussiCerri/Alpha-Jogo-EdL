// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function bolao_dash(){
	static fase = 0
	static t = 0
	if state == ST.TERRA then fase = 0
	
	switch(fase){
		case 0:
			//Inicia o Dash
			sprite_index = spr_bolao_vermelho
			fase = 1
			break
		case 1:
			//Espera o dash
			image_angle = point_direction(x,y,obj_player.x,obj_player.y)
			t ++
			if t == 30{
				fase = 2
				speed = 16
				direction = image_angle
			}
			break
		case 2:
			//Durante o dash
			if position_meeting(x + 150*dcos(direction),y - 150*dsin(direction), global.layer_de_colisao){
				sprite_index = spr_bolao_base
				speed = 0
				image_angle = point_direction(x,y,obj_player.x,obj_player.y)
				fase = 0
				state = ST.TERRA //aleatoreo
			}
			break
	}

}