function player_ativo_agua(){
	
	#region Movimentação na Agua
	var _xscale_prev = image_xscale
	var _dir_h = (right - left)//direção horizontal
	var _dir_v = (down - up) //direção vertical
	if (_dir_h != 0 or _dir_v != 0){
		hsp = (hsp ==0 and _dir_h)? P_SPEED*_dir_h : hsp
		vsp = (vsp ==0 and _dir_v)? P_SPEED*_dir_v : vsp
		var _mov_valido = !place_meeting(x + _dir_h*(hsp+2),y + _dir_v*(vsp+2), global.layer_de_colisao) //verifica a colisão
		hsp = (!(abs(hsp) < P_SPEED_MAX)? P_SPEED_MAX*_dir_h : hsp + 1*_dir_h)*_mov_valido
		vsp = (!(abs(vsp) < P_SPEED_MAX)? P_SPEED_MAX*_dir_v : vsp + 1*_dir_v)*_mov_valido
	}
	else{
		var _temp = hsp/abs(hsp)
		var _mod_h = (_temp != 0)? _temp : 0
		_temp = vsp/abs(vsp)
		var _mod_v = (_temp != 0)? _temp : 0
		var _mov_valido = !place_meeting(x + _dir_h*(hsp),y + _dir_v*(vsp), global.layer_de_colisao)
		hsp = (_mov_valido and hsp != 0)? hsp - 1*_mod_h: 0
		vsp = (_mov_valido and vsp != 0)? vsp - 1*_mod_v: 0
	}
	x += hsp //incremento de x na direção escolhida
	y += vsp //incremento de y na direção escolhida

	#endregion

	#region Direção do Peixe na Agua

	image_xscale = (_dir_h != 0)? _dir_h : _xscale_prev
	image_angle = - 45*_dir_v*_dir_h;

	#endregion
	
}