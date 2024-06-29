// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mapear_transicao(_borda,_i,_j){
	switch(_borda)
	{
		case MOV.CIMA:
			var _tran = instance_create_layer(0,0,layer,obj_transicao);
			_tran.destino = ds_grid_get(global.mapa,_i,_j-1);
			_tran.destino_x = obj_player.x;
			_tran.destino_y = room_height-10;
			global.yy-=1;
			break;
		case MOV.BAIXO:
			_tran = instance_create_layer(0,0,layer,obj_transicao);
			_tran.destino = ds_grid_get(global.mapa,_i,_j+1);
			_tran.destino_x = obj_player.x;
			_tran.destino_y = 10;
			global.yy+=1;
			break;
		case MOV.ESQUERDA:
			_tran = instance_create_layer(0,0,layer,obj_transicao);
			_tran.destino = ds_grid_get(global.mapa,_i-1,_j);
			_tran.destino_x = room_width-10;
			_tran.destino_y = obj_player.y;
			global.xx-=1;
			break;
		case MOV.DIREITA:
			_tran = instance_create_layer(0,0,layer,obj_transicao);
			_tran.destino = ds_grid_get(global.mapa,_i+1,_j);
			_tran.destino_x = 10;
			_tran.destino_y = obj_player.y;
			global.xx+=1;
			break;
	}
}