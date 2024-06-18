/// @description Visual da Hud
// Você pode escrever seu código neste editor
{
var _hp_x = 20;
var _hp_y = 20;
var _text_x = _hp_x + sprite_get_width(spr_hp) + 5; 
var _text_y = _hp_y + sprite_get_height(spr_hp) / 2;

draw_sprite(spr_hp, 0, _hp_x, _hp_y);
draw_sprite(spr_coin, 0, _hp_x, _hp_y + sprite_get_height(spr_coin) + 5);



draw_text(_text_x, _text_y, "X"+string(global.hp));
draw_text(_text_x, _text_y +sprite_get_height(spr_coin), "X"+string(global.coins));


//Desenhar Inventario
with(target){
	//prints relacionados aos estados
	switch(state){
		case ST.TERRA: 
			draw_text(32,132,"Tempo restante: "+string(timer)+" segundos")
			break
		case ST.MORTO:
			draw_text(room_width/2-128,32,"FIM DE JOGO - Aperte R pra reiniciar")
			break
	}
	//prints da hud relativos ao player
	draw_inventario()
}
	
}