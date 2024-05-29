/// @description Colisão com o Player
// Você pode escrever seu código neste editor
if (!opened) {
    global.coins += 10;
	audio_play_sound(snd_coin,1,false);
	image_index = true
    //sprite_index = spr_tesouro_a;
    opened = true;
}