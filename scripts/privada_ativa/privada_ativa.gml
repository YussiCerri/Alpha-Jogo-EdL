// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function privada_ativa(){
	static status = false;
	if !desbloqueada{
		devolver_controle(true)
	}
	else if status{
		var _selecionada = global.salas[num_operacoes("s","g")][1] //sala selecionada na opcao das privadas desbloqueadas
		if keyboard_check_pressed(global.control_left) num_operacoes("x","-")
		else if keyboard_check_pressed(global.control_right) num_operacoes("x","+")
		else if keyboard_check_pressed(global.control_up) num_operacoes("y","+")
		else if keyboard_check_pressed(global.control_down) num_operacoes("y","-")
		
		if global.interact and _selecionada != room{
			devolver_controle(true)
			var _tran = instance_create_layer(0,0,layer,obj_transicao)
			_tran.destino = _selecionada.destino
			_tran.destino_x = _selecionada.destino_x
			_tran.destino_y = _selecionada.destino_y
			for(var _i = 0; _i < ds_grid_width(global.mapa); _i++){
				for(var _j = 0;_j < ds_grid_height(global.mapa); _j++){
					if _tran.destino == ds_grid_get(global.mapa,_i,_j) {global.xx=_i; global.yy=_j;}
				}
			}
		}
		devolver_controle()
		if state == ST.PAUSA then status = false
	}
	else status = !global.interact
}