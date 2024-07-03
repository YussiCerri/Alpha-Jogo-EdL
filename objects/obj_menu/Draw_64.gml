if state == ST.PAUSA exit

var _center_x = room_width/2
var _center_y = room_height/2

draw_sprite_ext(spr_menu_background,0,_center_x,_center_y,5,8,0,c_white,1)

draw_sprite(spr_menu,0,_center_x,_center_y - 96)
draw_menu_continuar(_center_x, _center_y, indice == 0)
draw_menu_reiniciar(_center_x,_center_y +96, indice == 1)
draw_slider_volume(_center_x, _center_y + 192, indice == 2)