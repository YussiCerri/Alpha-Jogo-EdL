//Chamada a script que recebe as entradas
obter_entrada();

if(state!=ST.MORTO){
	state = position_meeting(x,y, global.layer_de_agua)? ST.AGUA : ST.TERRA

	switch(state){
		case ST.TERRA:
			player_ativo_terra()
			break
		case ST.AGUA:
			player_ativo_agua()
			break
	}
}
else
{
	sprite_index = spr_player_dead
	var _toca_solo = position_meeting(x,y+1,global.layer_de_colisao)
	if !(_toca_solo) {y+=1}
}
if keyboard_check(ord("R")){game_restart()}
	
if(state==ST.AGUA) {timer = 10}
else if(timer!=0)
{
	if(alarm[0]==-1) {alarm[0]=game_get_speed(gamespeed_fps)}
}

if(timer==0) {state=ST.MORTO}