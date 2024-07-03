// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function player_ativo_agua2(){
	//timer de sobrevivência fora da agua
	timer = 10
	
	#region Movimentação na Agua
	var _xscale_prev = image_xscale
	var _dir_h = (global.right - global.left) //direção horizontal
	var _mov_h = (global.right + global.left) //Verifica se existe intenção de movimento horizontal
	var _dir_v = (global.down - global.up) //direção vertical
	var _mov_v = (global.down + global.up) //Verifica se existe intenção de movimento vertical

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
	//Se o movimento desejado pode resultar em colisão, tratar a colisão
	if(colisao_com_solido(x+_hsp,y +_vsp)){
		var _col_h = colisao_com_solido(x + _hsp,y)
		var _col_v = colisao_com_solido(x,y + _vsp)
		if _col_h and !_col_v{_hsp = 0}
		else if !_col_h and _col_v{_vsp = 0}
		else{_vsp = 0; _hsp = 0}
	}
	hsp = _hsp
	vsp = _vsp
	x += hsp
	y += vsp

	#region Direção do Peixe na Agua

	image_xscale = (_dir_h != 0)? _dir_h : _xscale_prev
	image_angle = - 45*_dir_v*_dir_h;

	#endregion
}