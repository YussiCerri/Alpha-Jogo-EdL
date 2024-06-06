// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//Desenha 3 items para comprar
function draw_loja(){
	var _y = y -32
	
	draw_sprite(spr_fala,0, x, _y)
	draw_sprite(spr_minifalas,0, x+64, _y)
	draw_sprite(spr_minifalas,0, x-64, _y)
	
	draw_sprite_ext(spr_seta,0, x + 128, _y, 1,1,0,c_white,1)
	draw_sprite_ext(spr_seta,0, x - 128, _y,-1,1,0,c_white,1)
	
	draw_sprite(items_atuais[0].sprite,0,x - 64,_y)
	draw_sprite(items_atuais[1].sprite,0,x     ,_y)
	draw_sprite(items_atuais[2].sprite,0,x + 64,_y)
	
	if (global.coins < items_atuais[1].custo) draw_sprite(spr_cadeado,0,x,_y)
	
	draw_sprite_ext(spr_coin,0,x-32,_y-32,0.5,0.5,0,c_white,1)
	draw_sprite_ext(spr_coin,0,x-96,_y-32,0.5,0.5,0,c_white,1)	
	draw_sprite_ext(spr_coin,0,x+32,_y-32,0.5,0.5,0,c_white,1)	
	
	draw_text_color(x-32,_y-32,string(items_atuais[1].custo),c_black,c_black,c_black,c_black,1)
	draw_text_color(x-96,_y-32,string(items_atuais[0].custo),c_black,c_black,c_black,c_black,1)
	draw_text_color(x+32,_y-32,string(items_atuais[2].custo),c_black,c_black,c_black,c_black,1)
	
}


function loja_ativa(){
	static i = 0;
	if keyboard_check_released(global.control_left){
		i++
		i = (i < t_items)? i : 0
	}
	else if keyboard_check_released(global.control_right){
		i--
		i = (i >= 0)? i : t_items - 1
	}
	else devolver_controle() /*if global.quit {
		obj_player.state = ST.AGUA
		self.state = ST.PAUSA
	
	}*/
	var _iprev = (i - 1 >=      0)? i - 1 : t_items - 1
	var _iprox = (i + 1 < t_items)? i + 1 : 0
	items_atuais = [items[_iprev], items[i],items[_iprox]]
	if global.interact then comprar_item()
}
/*
function loja_inativa(){
	if global.interact and p_meet{
		obj_player.state = ST.PAUSA
		state = ST.AGUA
	}
}*/

function comprar_item(){
	with(obj_player){
		var _item = other.items_atuais[1]
		if (_item.custo <= global.coins){
			for(var _i = 0; _i < 5;_i++){
				if (inv[_i].nome == NOITEM.nome) {
					global.coins -= _item.custo
					inv[_i] = _item
					break
				}
			}
		}
	}
}
