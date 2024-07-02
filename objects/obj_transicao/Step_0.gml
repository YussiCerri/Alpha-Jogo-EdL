/// @description Insert description here
// You can write your code in this editor

if(mudei)
{
	alpha -= 0.02
}
else 
{
	alpha += 0.02
}

//Quando alpha chegar a 1, muda a room
if(alpha >= 1)
{
	room_goto(destino)
	mudei=true
	//Controlando a posição do player
	obj_player.x=destino_x
	obj_player.y=destino_y
}

//Destruir transição após ficar transparente e mudar room
if(mudei and alpha <= 0)
{
	instance_destroy()
	obj_player.state = position_meeting(x,y, global.layer_de_agua)? ST.AGUA : ST.TERRA
}