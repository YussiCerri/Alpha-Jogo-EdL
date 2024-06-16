// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function derrotar_inimigo(){
	// random_set_seed(12345); para os mesmos valores.
	randomize();

	global.coins += irandom_range(1,10)
	instance_destroy()
}