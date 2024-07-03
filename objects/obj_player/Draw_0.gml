var _t = inv[item_index]
switch(_t.tipo){
	case ITYPE.EQUIPBACK: draw_sprite_ext(_t.sprite, 0, x, y,1,1,image_angle,c_white,1)
	default: break
}
draw_self()
switch(_t.tipo){
	case ITYPE.EQUIPBACK: case ITYPE.NOTITEM: break
	case ITYPE.ARMA:  
		var _angle = point_direction(x,y,mouse_x,mouse_y)
		var _y_scale = (_angle > 90 and _angle < 270)? -1:1
		draw_sprite_ext(_t.sprite, 0, x, y,1,_y_scale,_angle,c_white,1);break
	default: draw_sprite_ext(_t.sprite, 0, x, y,1,1,image_angle,c_white,1)
}

var impressor = array_filter(global.conquistas,function(_x) {return _x[1]==true}) //Array com os nomes das conquistas
function imprimir(vet) 
{
	static arr=[]
	for(var i=0;i<array_length(vet);i++) {arr[i]=vet[i][0]}
	return arr
}
draw_text(20,300,imprimir(impressor))