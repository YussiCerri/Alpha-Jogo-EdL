function player_ativo_agua(){
	
	#region Movimentação na Agua
	var _xscale_prev = image_xscale
	var _dir_h = (global.right - global.left) //direção horizontal
	var _mov_h = (global.right + global.left) //Verifica se existe intenção de movimento horizontal
	var _dir_v = (global.down - global.up) //direção vertical
	var _mov_v = (global.down + global.up) //Verifica se existe intenção de movimento vertical
	/*
	#region MANIPULAÇÃO 1.0
	if (_dir_h != 0 or _dir_v != 0){
		hsp = (hsp == 0 and _dir_h)? P_SPEED*_dir_h : hsp
		vsp = (vsp == 0 and _dir_v)? P_SPEED*_dir_v : vsp
		var _mov_valido = !place_meeting(x + _dir_h*(hsp + ACC),y + _dir_v*(vsp + ACC), global.layer_de_colisao) //verifica a colisão
		hsp = (!(abs(hsp) < P_SPEED_MAX)? P_SPEED_MAX*_dir_h : hsp + ACC*_dir_h)*_mov_valido
		vsp = (!(abs(vsp) < P_SPEED_MAX)? P_SPEED_MAX*_dir_v : vsp + ACC*_dir_v)*_mov_valido
	}
	else{
		var _temp = hsp/abs(hsp)
		var _mod_h = (_temp != 0)? _temp : 0
		_temp = vsp/abs(vsp)
		var _mod_v = (_temp != 0)? _temp : 0
		var _mov_valido = !place_meeting(x + _dir_h*(hsp),y + _dir_v*(vsp), global.layer_de_colisao)
		hsp = (_mov_valido and hsp != 0)? hsp - ACC*_mod_h: 0
		vsp = (_mov_valido and vsp != 0)? vsp - ACC*_mod_v: 0
	}
	x += hsp //incremento de x na direção escolhida
	y += vsp //incremento de y na direção escolhida

	#endregion
	*/
	#region MANIPULAÇÂO 2.0
	//Calcular as novas velocidades
	var _hsp = hsp
	var _vsp = vsp
	if (_mov_h) {
		//Se quer se mover, mas estava parado, então começa com a velocidade mínima inicial
		if (_hsp == 0){
			_hsp = P_SPEED*_dir_h
		}
		//se já estava em movimento e a velocidade for menor que a máxima, então acelera
		else if (abs(_hsp) < P_SPEED_MAX){
			_hsp = _hsp + ACC*_dir_h
		}
	}
	else{
		//Se não quer se mover, mas está em movimento, então desacelera
		_hsp = (abs(_hsp) > 0)? _hsp - ACC*(_hsp/abs(_hsp)): 0
	}
	if (_mov_v) {
		//Se quer se mover, mas estava parado, então começa com a velocidade mínima inicial
		if (_vsp == 0){
			_vsp = P_SPEED*_dir_v
		}
		//se já estava em movimento e a velocidade for menor que a máxima, então acelera
		else if (abs(_hsp) < P_SPEED_MAX){
			_vsp = _vsp + ACC*_dir_v
		}
	}
	else{
		//Se não quer se mover, mas está em movimento, então desacelera
		_vsp = (abs(_vsp) > 0)? _vsp - ACC*(_vsp/abs(_vsp)): 0
	}
	
	if(position_meeting(x + _hsp, y + _vsp, global.layer_de_colisao)){
		var _col_h = position_meeting(x + _hsp, y, global.layer_de_colisao)
		var _col_v = position_meeting(x, y + _vsp, global.layer_de_colisao)
		if _col_h and !_col_v{_hsp = 0}
		else if !_col_h and _col_v{_vsp = 0}
		else{_vsp = 0; _hsp = 0}
	}
	hsp = _hsp
	vsp = _vsp
	x += hsp
	y += vsp
	#endregion

	#region Direção do Peixe na Agua

	image_xscale = (_dir_h != 0)? _dir_h : _xscale_prev
	image_angle = - 45*_dir_v*_dir_h;

	#endregion
	
}