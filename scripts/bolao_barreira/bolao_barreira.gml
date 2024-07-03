// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function bolao_criar_barreira(){
	for(var _i = 0; _i < 360; _i += 30){
		instance_create_layer(x+150*dcos(_i), y - 150*dsin(_i),"Instances",obj_spike)
	}
}

function bolao_mover_barreira(){
	with(obj_spike){
		if fase == 0{
			var _dir = point_direction(other.x,other.y,self.x,self.y)
			x = other.x + 150*dcos(_dir + 2)
			y = other.y - 150*dsin(_dir + 2)
		}
	}
}

function bolao_atirar(){
	with(obj_spike){
		if fase == 0{
			var _dir = point_direction(other.x,other.y,self.x,self.y)
			x = other.x + 150*dcos(_dir + 2)
			y = other.y - 150*dsin(_dir + 2)
			if abs(point_direction(other.x,other.y,self.x,self.y) - point_direction(self.x,self.y,obj_player.x,obj_player.y)) < 30 {
				speed = 8
				direction = point_direction(self.x,self.y,obj_player.x,obj_player.y)
				fase = 1
			}
		}
	}





}