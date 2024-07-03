// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function menu_continuar(){
	if global.interact{
		obj_player.state = (obj_player.state == ST.PAUSA)? ST.ATIVO: ST.MORTO
		state = ST.PAUSA
	}
}

function draw_menu_continuar(_x,_y,_selected = false){
	draw_sprite_ext(spr_opcao,_selected,_x,_y, 3, 1, 0,c_white,1)
	draw_text(_x,_y, "Continuar")
}