//fica aqui o código por propósitos de debug

draw_text(32,32,"("+string(x)+ ","+string(y)+")")
if(state==ST.TERRA) {draw_text(32,132,"Tempo restante: "+string(timer)+" segundos")}
if(state==ST.MORTO) {draw_text(room_width/2-128,32,"FIM DE JOGO - Aperte R pra reiniciar")}