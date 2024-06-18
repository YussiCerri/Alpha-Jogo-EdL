/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

speed = 10;
if (instance_exists(obj_player)) {
    var _player_x = obj_player.x;
    var _player_y = obj_player.y;

    // Calcular a direção para obj_player
    direction = point_direction(x, y, _player_x, _player_y);

    // Movendo obj_bala_ze na direção calculada
    motion_set(direction, speed);
}