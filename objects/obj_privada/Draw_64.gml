if state == ST.PAUSA exit
if desbloqueada 
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