if desbloqueada and place_meeting(x,y,obj_player)
{
	var selecionada = global.salas[num_operacoes("g")][1] //sala selecionada na opcao das privadas desbloqueadas
	if keyboard_check_pressed(ord("A")) num_operacoes("-")
	if keyboard_check_pressed(ord("D")) num_operacoes("+")
	
	if global.use {
		if array_get(global.salas[room],1)!=self
		{
			array_set(global.salas[room],0,room)
			array_set(global.salas[room],1,self)
		}
	}
	
	if global.interact and selecionada!=undefined and selecionada!=self{
		var _tran = instance_create_layer(0,0,layer,obj_transicao)
		_tran.destino = selecionada.destino
		_tran.destino_x = selecionada.destino_x
		_tran.destino_y = selecionada.destino_y
	}
}