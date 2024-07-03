// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function bolao_active(){
	static t = 0
	static fase = 0
	switch(fase){
		case 0:
			//Escolhendo seu plano
			t++
			if t >= 90{
				t = 0
				fase = irandom_range(1,2)
			}
			break
		case 1:
			//bolao faz o dash
			bolao_dash()
			break
		case 2: 
			//bolao usa sua defesa para atacar
			bolao_atirar()
			if !instance_exists(obj_spike){
				bolao_criar_barreira()
				fase = 0
			}
			break
	}
}