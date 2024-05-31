/// @description M
if (place_meeting(x, y, obj_inimigo1)) {
    // Move o jogador de volta para fora do inimigo
    var _old_x = x;
    var _old_y = y;

    // Move o jogador de volta ao longo de sua direção de movimento até que não haja colisão
    while (place_meeting(x, y, obj_inimigo1)) {
        x -= lengthdir_x(1, direction);
        y -= lengthdir_y(1, direction);
    }
    
    // Verifica se ainda está em colisão após ajustar a posição
    if (place_meeting(x, y, obj_inimigo1)) {
        // Se ainda houver colisão, reverter para a posição antiga
        x = old_x;
        y = old_y;
    }
	player_dano() // Aplica o dano ao jogador
}
	
	