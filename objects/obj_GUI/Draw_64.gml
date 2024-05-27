/// @description Visual da Hud
// Você pode escrever seu código neste editor

var _icon_x = 50;
var _icon_y = 50;

draw_sprite(spr_coin, 0, _icon_x, _icon_y);

var _text_x = _icon_x + sprite_get_width(spr_coin) + 5; 
var _text_y = _icon_y + sprite_get_height(spr_coin) / 2 - string_height(string(global.coins)) / 2;

draw_text(_text_x, _text_y, string(global.coins));


