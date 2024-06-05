function player_dano() {
        // Reduzir a vida do jogador
        global.hp -= 1;
        if (global.hp == 0) {
            // Se a vida do jogador chegar a 0, não piscar
            exit;
        }

        invencivel = true; // Ativar a invencibilidade
        timer_invencivel = 2; // Duração da invencibilidade em segundos
        alarm[1] = timer_invencivel * game_get_speed(gamespeed_fps); // Definir alarme para fim da invencibilidade
        alarm[2] = vel_piscar; // Definir alarme para piscar
}