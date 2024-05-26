/// @description Insert description here
// You can write your code in this editor

//Checar colisao com player
var player = place_meeting(x,y,obj_player)

//Checar se pressionou espaço
var espaco = keyboard_check_released(vk_space)

if(player and espaco)
{
	//Codigo da transicao
	var tran = instance_create_layer(0,0,layer,obj_transicao)
	tran.destino = destino
	tran.destino_x = destino_x
	tran.destino_y = destino_y
}


