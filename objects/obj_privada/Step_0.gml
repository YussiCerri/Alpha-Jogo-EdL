/// @description Insert description here
// You can write your code in this editor

//Checar colisao com player
var _player = place_meeting(x,y,obj_player)

//Checar se pressionou espaço
//var _espaco = keyboard_check_released(vk_space)
if !desbloqueada{
	image_index = instance_number(obj_coin) <= 5
	desbloqueada = image_index

}
else if _player and global.interact{
	var _tran = instance_create_layer(0,0,layer,obj_transicao)
	_tran.destino = destino
	_tran.destino_x = destino_x
	_tran.destino_y = destino_y
}

/*
if(desbloqueada and _player and global.interact)
{
	//Codigo da transicao
	var _tran = instance_create_layer(0,0,layer,obj_transicao)
	_tran.destino = destino
	_tran.destino_x = destino_x
	_tran.destino_y = destino_y
}
*/

