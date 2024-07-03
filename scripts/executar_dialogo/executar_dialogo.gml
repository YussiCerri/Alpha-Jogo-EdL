// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function executar_dialogo() {
    // Buscar os diálogos da instância atual baseados em `placa_tipo`
    var _dialogos_da_instancia = ds_map_find_value(global.dialogos_por_tipo, self.placa_tipo);

    // Verifica se a tecla de espaço foi pressionada para avançar no diálogo
    if (keyboard_check_pressed(vk_space)) {
        self.dialogo_atual++; // Avança para o próximo diálogo
    }

    // Verifica se o índice atual de diálogo ultrapassou o tamanho da lista de diálogos
    if (self.dialogo_atual >= ds_list_size(_dialogos_da_instancia)) {
		alarm[0] = game_get_speed(gamespeed_fps) * 0.5
		intervalo = true
        self.dialogo_atual = 0;// Reinicia o índice de diálogo para o início
		self.texto = ""
        devolver_controle(true); // Retorna o controle para o player
    } else {
        self.texto = _dialogos_da_instancia[| self.dialogo_atual]; // Obtém o texto do diálogo atual
    }
}