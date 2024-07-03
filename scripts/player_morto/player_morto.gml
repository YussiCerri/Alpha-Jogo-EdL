// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function player_morto(){
	var _toca_solo = position_meeting(x,y+1,global.layer_de_colisao)
	//position meeting é só usado uma vez
	if !_toca_solo{y+=1}
	menu_give_control()
}

function matar_player(){
	sprite_index = spr_player_dead
	state = ST.MORTO
}