if state == ST.PAUSA exit

if desbloqueada 
{
	var _selecionada = global.salas[num_operacoes("g")][1] //sala selecionada na opcao das privadas desbloqueadas
	if keyboard_check_pressed(global.control_left) num_operacoes("-")
	if keyboard_check_pressed(global.control_right) num_operacoes("+")
	if global.interact and _selecionada != undefined and _selecionada != self{
		devolver_controle(true)
		var _tran = instance_create_layer(0,0,layer,obj_transicao)
		_tran.destino = _selecionada.destino
		_tran.destino_x = _selecionada.destino_x
		_tran.destino_y = _selecionada.destino_y
	}
	devolver_controle()
}
else{
	devolver_controle(true)
}