if t == 0 exit

var _x = tilemap_get_cell_x_at_pixel(global.layer_de_colisao,x,y)
var _y = tilemap_get_cell_y_at_pixel(global.layer_de_colisao,x,y)
var _d = tilemap_get(global.layer_de_colisao,_x,_y)


tilemap_set(global.layer_de_colisao,14,_x,_y)