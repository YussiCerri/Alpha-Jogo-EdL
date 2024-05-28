// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mapear_transicao(_borda,i,j)
{
	switch(_borda)
	{
		case MOV.CIMA:
			var _tran = instance_create_layer(0,0,layer,obj_transicao);
			_tran.destino = ds_grid_get(global.mapa,i,j-1);
			_tran.destino_x = obj_player.x;
			_tran.destino_y = room_height-10;
			break;
		case MOV.BAIXO:
			_tran = instance_create_layer(0,0,layer,obj_transicao);
			_tran.destino = ds_grid_get(global.mapa,i,j+1);
			_tran.destino_x = obj_player.x;
			_tran.destino_y = 10;
			break;
		case MOV.ESQUERDA:
			_tran = instance_create_layer(0,0,layer,obj_transicao);
			_tran.destino = ds_grid_get(global.mapa,i-1,j);
			_tran.destino_x = room_width-10;
			_tran.destino_y = obj_player.y;
			break;
		case MOV.DIREITA:
			_tran = instance_create_layer(0,0,layer,obj_transicao);
			_tran.destino = ds_grid_get(global.mapa,i+1,j);
			_tran.destino_x = 10;
			_tran.destino_y = obj_player.y;
			break;
	}
}