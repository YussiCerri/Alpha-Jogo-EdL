/// @description Controle do tempo de personagem piscando

if (invencivel) {
    image_alpha = 1 - image_alpha; // Alternar entre visível e invisível
    alarm[2] = vel_piscar; // Reiniciar o alarme para continuar piscando
} else {
    image_alpha = 1; // Garantir que o jogador esteja visível quando não invencível
}