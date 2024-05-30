/// @description Insert description here
// You can write your code in this editor

//Sprite da privada dependendo da condição de bloqueio
image_index = desbloqueada

//Checar colisao com player
var _player = place_meeting(x,y,obj_player)

//Checar se pressionou espaço
var _espaco = keyboard_check_released(vk_space)

if instance_number(obj_coin)<=5 {desbloqueada=true}

if(desbloqueada and _player and _espaco)
{
	//Codigo da transicao
	var _tran = instance_create_layer(0,0,layer,obj_transicao)
	_tran.destino = destino
	_tran.destino_x = destino_x
	_tran.destino_y = destino_y
}


