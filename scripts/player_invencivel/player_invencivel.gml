// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function player_invencivel(){
	timer_piscar += 1;
    if (timer_piscar >= vel_piscar) {
        timer_piscar = 0;
        image_alpha = 1 - image_alpha; // Alternar entre visível e invisível
    }
}