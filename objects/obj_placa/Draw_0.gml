/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self()
if (self.state == ST.ATIVO and !self.intervalo) {
    var _guil = display_get_gui_width();
    var _guia = display_get_gui_height();
    var _xx = 0;
    var _yy = _guia - 200;
    var _c = c_black;
	var _fonte_anterior = draw_get_font();
	draw_set_font(fnt_dialogo);

    // Desenha o retângulo preto na parte inferior da tela
    draw_set_color(_c);
    draw_rectangle(_xx, _yy, _guil, _guia, false);

    // Configurações para o texto
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    
    // Exibe o texto dentro do retângulo
    draw_text_ext(_xx + 32, _yy + 32, self.texto, 32, _guil - 64);
	draw_set_font(_fonte_anterior);
}