if state == ST.PAUSA exit

indice = (indice - keyboard_check_pressed(global.control_up) + keyboard_check_pressed(global.control_down))%4

switch(indice){
	case 0:
		//Continuar
		menu_continuar()
		break
	case 1:
		//Reiniciar
		if global.interact then game_restart()
		break
	case 2:
		//Volume
		menu_volume()
		break
	case 3:
		//Controles
		
		break
}
