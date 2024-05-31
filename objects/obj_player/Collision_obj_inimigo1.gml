/// @description Inserir descrição aqui
if (!invencivel && global.hp > 0) {
    // Reduzir a vida do jogador
    global.hp -= 1;
	if (global.hp == 0){exit} //Evita que o player pisque após morrer
    invencivel = true; //Ativar a invencibilidade
    timer_invencivel = 2; // Duração da invencibilidade em segundos
    alarm[1] = timer_invencivel * game_get_speed(gamespeed_fps); // Definir alarme
}
	
	