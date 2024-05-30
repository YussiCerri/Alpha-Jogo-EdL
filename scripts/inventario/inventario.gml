// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_inventario(){
	var _y = view_hport[0] / 2
	var _x = view_wport[0] - 64
	var _j = item_index
	//movimenta o inventario pelo mouse
	_j +=  mouse_wheel_down() - mouse_wheel_up()
	_j = (_j < 0)? 4: _j
	_j = (_j > 4)? 0: _j
	item_index = _j
	//inv é o inventario de obj_player
	for(var _i = 0; _i < 5; _i++){
		draw_sprite(_j == _i? spr_slot_sel: spr_slot_inv,0,_x, _y + (_i - 2)*96) 
		draw_sprite(inv[_i].sprite                      ,0,_x, _y + (_i - 2)*96)
	}
}

function usar_item_atual(){
	switch(inv[item_index].tipo){
		case ITYPE.NOTITEM: break
		case ITYPE.CONSUMIVEL: if global.use then usar_item(); break
		case ITYPE.ARMA: if mouse_check_button(mb_left) then usar_item(); break
		case ITYPE.EQUIPTOP: case ITYPE.EQUIPBACK: usar_item(); break
	}
}