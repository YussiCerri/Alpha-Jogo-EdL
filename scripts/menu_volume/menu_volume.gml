// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function menu_volume(){
	static vol = audio_group_get_gain(audiogroup_default)
	if global.left and vol > 0{
		vol -= 0.1
		audio_group_set_gain(audiogroup_default,vol,1)
	}
	else if global.right and vol < 1{
		vol += 0.1
		audio_group_set_gain(audiogroup_default,vol,1)
	}
}

function draw_slider_volume(_x,_y,_selected = false){
	static vol = audio_group_get_gain(audiogroup_default)
	draw_text(_x,_y - 32,"Volume")
	if _selected{
		vol = audio_group_get_gain(audiogroup_default)
	}
	for (var _i = 0; _i <= 10; _i++){
		if vol != _i/10{
			draw_sprite(spr_slider,_i/10 <= vol,_x + 8*(_i - 5),_y)
		}
	}
	draw_sprite(spr_quadrado,_selected,_x + 8*(vol*10 - 5),_y)
}