// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function menu_give_control(){
	if global.quit{
		state = (state == ST.MORTO)? ST.MORTO: ST.PAUSA
		obj_menu.state = ST.ATIVO
	}
}