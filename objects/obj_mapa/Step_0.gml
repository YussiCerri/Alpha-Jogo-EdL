/// @description Insert description here
// You can write your code in this editor
var _sem_tran = !instance_exists(obj_transicao)
var _limit_xx = ds_grid_width(global.mapa)-1
var _limit_yy = ds_grid_height(global.mapa)-1

if(obj_player.state!=ST.MORTO)
{
	if(obj_player.x<=0 and xx!=0 and _sem_tran) 
	{mapear_transicao(MOV.ESQUERDA,xx,yy)}
	if(obj_player.x>=room_width and xx!=_limit_xx and _sem_tran) 
	{mapear_transicao(MOV.DIREITA,xx,yy)}
	if(obj_player.y<=0 and yy!=0 and _sem_tran) 
	{mapear_transicao(MOV.CIMA,xx,yy)}
	if(obj_player.y>=room_height and yy!=_limit_yy and _sem_tran) 
	{mapear_transicao(MOV.BAIXO,xx,yy)}
}