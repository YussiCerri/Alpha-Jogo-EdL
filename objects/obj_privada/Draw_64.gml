/// @description Insert description here
// You can write your code in this editor
var pode_usar = place_meeting(x,y,obj_player)
draw_text(100,200,global.rooms_nomes)

if desbloqueada and pode_usar
{
	draw_rectangle_color(200,200,550,300,c_white,c_white,c_white,c_white,false)
	if global.salas[num_operacoes("g")][0]!=undefined
	{
		draw_text_color(250,230,"Escolha uma room: " + room_get_name(global.salas[num_operacoes("g")][0]),c_black,c_black,c_black,c_black,1)
	}
	else
	{
		draw_text_color(250,230,"Privada bloqueada",c_black,c_black,c_black,c_black,1)
	}
	draw_text_color(230,260,"Numero da room selecionada: " + string(num_operacoes("g")+1),c_red,c_red,c_red,c_red,1)
}