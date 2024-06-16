// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function congelar_inimigo(){
	congelado = true
	image_index = 1
	instance_destroy(other)
	alarm[0] = 2 * game_get_speed(gamespeed_fps)
}