// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function bolao_criar_barreira(){
	for(var _i = 0; _i < 360; _i += 30){
		instance_create_layer(x+300*dcos(_i), y- dsin(_i),"Instances",obj_spike)
	}
}

function bolao_mover_barreira(){
	with(obj_spike){
		direction = point_direction(other.x,other.y,self.x,self.y) + 90
		speed = 8
	
	
	}


}