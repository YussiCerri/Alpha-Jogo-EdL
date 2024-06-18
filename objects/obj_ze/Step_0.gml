/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (ze_hp <=0){
	instance_destroy()
}

if (instance_exists(obj_player)) {
    var _player_x = obj_player.x;
    var _player_y = obj_player.y;

    // Mover o zé em direção ao player
    move_towards_point(_player_x, _player_y, ze_speed);
	//Invertido pois o sprite está invertido
	if (_player_x < x) {
        image_xscale = 1;
    } else {
        image_xscale = -1;
    }
}
