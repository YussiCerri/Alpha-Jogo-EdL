if state == ST.PAUSA exit
switch(fase){
	case 0:
		fase = 1
		instance_deactivate_object(porta)
		devolver_controle(true)
		break
	case 1:
		fase = 0
		instance_activate_object(porta)
		devolver_controle(true)
		break
}
image_index = fase