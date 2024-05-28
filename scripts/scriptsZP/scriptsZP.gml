// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//Desenha 3 items para comprar
function draw_loja(){
	draw_sprite(spr_fala,0, x, y -32)
	draw_sprite_ext(spr_seta,0, x + 64, y -32, 1,1,0,c_white,1)
	draw_sprite_ext(spr_seta,0, x - 64, y -32,-1,1,0,c_white,1)
	draw_sprite(item_atual.sprite,0,x,y-32)
}

function loja_ativa(){
	static i = 0;
	if keyboard_check_released(global.control_left){
		i--
		i = (i >= 0)? i : t_items - 1
	}
	else if keyboard_check_released(global.control_right){
		i++
		i = (i < t_items)? i : 0
	}
	item_atual = items[i]
}


//Construtor de Objetos
function CriarItem(_nome = "item", _custo = 0, _sprite = spr_bomba) constructor {
	nome = _nome
	custo = _custo
	sprite = _sprite
}