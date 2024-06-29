// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function interagir(){
	if global.interact{
		with(instance_place(x,y,obj_interactive)){
			other.state = ST.PAUSA
			self.state = ST.ATIVO
			global.interact = false
		}
	}
}

function devolver_controle(_bool = false){
	if _bool or global.quit{
		with(obj_player){
			self.state = position_meeting(x,y, global.layer_de_agua)? ST.AGUA : ST.TERRA
			other.state = ST.PAUSA
			return true
		}
	}
	return false
}