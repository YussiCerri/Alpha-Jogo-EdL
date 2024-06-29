if state == ST.PAUSA exit

if desbloqueada 
{
	var _selecionada = global.salas[num_operacoes("s","g")][1] //sala selecionada na opcao das privadas desbloqueadas
	if keyboard_check_pressed(global.control_left) num_operacoes("x","-")
	if keyboard_check_pressed(global.control_right) num_operacoes("x","+")
	if keyboard_check_pressed(global.control_up) num_operacoes("y","+")
	if keyboard_check_pressed(global.control_down) num_operacoes("y","-")
	if global.interact and _selecionada != undefined and _selecionada != self{
		devolver_controle(true)
		var _tran = instance_create_layer(0,0,layer,obj_transicao)
		_tran.destino = _selecionada.destino
		_tran.destino_x = _selecionada.destino_x
		_tran.destino_y = _selecionada.destino_y
		for(var i=0;i<ds_grid_width(global.mapa);i++)
		{
			for(var j=0;j<ds_grid_height(global.mapa);j++)
			{
				if _tran.destino==ds_grid_get(global.mapa,i,j) {global.xx=i; global.yy=j;}
			}
		}
	}
	devolver_controle()
}
else{
	devolver_controle(true)
}