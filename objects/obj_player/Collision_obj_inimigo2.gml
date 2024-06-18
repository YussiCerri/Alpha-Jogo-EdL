/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (place_meeting(x, y, obj_inimigo1)) {
   
   // Move o jogador de volta para fora do inimigo
    // Variáveis temporárias para armazenar a posição antiga
    var _old_x = x;
    var _old_y = y;

    // Calcular a direção do jogador para o inimigo
    var _dir = point_direction(x, y, other.x, other.y);

    // Inverter a direção para empurrar o jogador para trás
    var _push_direction = _dir + 180;

    // Move o jogador de volta ao longo da direção invertida até que não haja colisão
    while (place_meeting(x, y, obj_inimigo1)) {
        x += lengthdir_x(1, _push_direction);
        y += lengthdir_y(1, _push_direction);
    }

    // Aplica o dano ao jogador caso não esteja morto ou invencível
    if (!invencivel && global.hp > 0) {
        player_dano();
    }
}