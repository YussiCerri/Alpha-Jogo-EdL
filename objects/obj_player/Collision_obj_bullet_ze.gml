/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (!invencivel && global.hp > 0) {
	player_dano();
	instance_destroy(other);
}