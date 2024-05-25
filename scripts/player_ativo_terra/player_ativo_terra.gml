// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function player_ativo_terra(){
	var _dir_h = (right - left) //direção horizontal
	
	var _mov_valido_h = !place_meeting(x + _dir_h*hsp,y, global.layer_de_colisao)
	x += _mov_valido_h*_dir_h*hsp
	var _mov_valido_v = !place_meeting(x,y + vsp, global.layer_de_colisao)
	y += _mov_valido_v*vsp
	
	
	
	
	
}