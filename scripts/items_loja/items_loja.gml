// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function items_loja(){
	return [
	new CriarItem("Aquario"     , 15,spr_aquario),//implementar aquario
	new CriarItem("Bomba"       , 10,spr_bomba),//implementar bomba
	new CriarItem("Desentupidor",  5,spr_desentupidor,
		function(){
			var _target = noone
			with(obj_player){
				_target = instance_place(x,y,obj_privada)
				if instance_exists(_target) and !_target.desbloqueada{
					consume_item()
					_target.desbloqueada = true
					_target.image_index = 1
				}
			}
		}
	),
	new CriarItem("Pocao de Cura", 5,spr_pocao,
		function(){
			global.hp += 5
			consume_item()
		}),
	new CriarItem("Jetpack"     , 40,spr_jetpack,
		function(){
			with(obj_player){
					vsp = -8
			}
		}
	),
	]
}

function consume_item(){
	with(obj_player){
		inv[item_index] = NOITEM
	}
}

function usar_item(){
	inv[item_index].usar()
}