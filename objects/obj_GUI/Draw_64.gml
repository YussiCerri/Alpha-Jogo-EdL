/// @description Visual da Hud
// Você pode escrever seu código neste editor

var icon_x = 50;
var icon_y = 50;

draw_sprite(spr_coin, 0, icon_x, icon_y);

var text_x = icon_x + sprite_get_width(spr_coin) + 5; 
var text_y = icon_y + sprite_get_height(spr_coin) / 2 - string_height(string(global.coins)) / 2;

draw_text(text_x, text_y, string(global.coins));


