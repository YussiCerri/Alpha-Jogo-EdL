// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function colisao_com_solido(_x,_y){
	return (position_meeting(_x, _y, global.layer_de_colisao) or position_meeting(_x,_y,obj_solid))
}
function colisao_com_solido2(_x,_y){
	return (place_meeting(_x, _y, global.layer_de_colisao) or place_meeting(_x,_y,obj_solid))
}