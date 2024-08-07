// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function player_ativo_terra2(){
	menu_give_control()
	#region Movimento
	image_angle = 0
	var _xscale_prev = image_xscale
	var _dir_h = (global.right - global.left) //direção horizontal
	
	if (_dir_h != 0){
		hsp = (hsp == 0)? P_SPEED*_dir_h : hsp
		var _mov_valido = !colisao_com_solido2(x + _dir_h*(hsp + ACC),y) //verifica a colisão
		hsp = (!(abs(hsp) < P_SPEED_MAX/2)? P_SPEED_MAX*_dir_h/2 : hsp + ACC*_dir_h)*_mov_valido
	}
	else{
		var _temp = hsp/abs(hsp)
		var _mod_h = (_temp != 0)? _temp : 0
		var _mov_valido = !colisao_com_solido2(x + hsp,y)
		hsp = (_mov_valido and hsp != 0)? hsp - ACC*_mod_h: 0
	}
	
	var _toca_solo = colisao_com_solido(x+hsp, y + vsp)
	vsp = _toca_solo? -16*GRAV: vsp + GRAV
	var _dir_v = vsp/abs(vsp)
	while(colisao_com_solido(x,y + vsp) and vsp != 0){
		vsp -= _dir_v
	}
	x += hsp
	y += vsp
	
	image_xscale = (_dir_h != 0)? _dir_h: _xscale_prev
	#endregion
	
	if(timer!=0)
	{
		if(alarm[0]==-1) {alarm[0]=game_get_speed(gamespeed_fps)}
	}
	
}