// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_inventario(){
	static i = 0
	var _y = view_hport[0] / 2
	var _x = view_wport[0] - 64
	//movimenta o inventario pelo mouse
	i +=  mouse_wheel_down() - mouse_wheel_up()
	i = (i < 0)? 4: i
	i = (i > 4)? 0: i
	item_index = i
	//inv é o inventario de obj_player
	for(var _i = 0; _i < 5; _i++){
		draw_sprite(i == _i? spr_slot_sel: spr_slot_inv,0,_x, _y + (_i - 2)*96) 
		draw_sprite(inv[_i].sprite                     ,0,_x, _y + (_i - 2)*96)
	}
}
