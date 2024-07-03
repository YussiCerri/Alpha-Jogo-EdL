if congelado {
	speed = 0 
	fase = 0
	exit
}
switch(fase){
	case 0:
		//Inicia o Dash
		if distance_to_object(obj_player) < 300{fase = 1}
		break
	case 1:
		//Espera o dash
		image_angle = point_direction(x,y,obj_player.x,obj_player.y)
		t ++
		if t >= 60 and !colisao_com_solido(x + 32*dcos(image_angle),y - 32*dsin(image_angle)){
			fase = 2
			speed = 16
			direction = image_angle
			t = 0
		}
		break
	case 2:
		//Durante o dash
		if colisao_com_solido(x + 32*dcos(direction),y - 32*dsin(direction)){
			speed = 0
			image_angle = point_direction(x,y,obj_player.x,obj_player.y)
			fase = 0
		}
		break
}