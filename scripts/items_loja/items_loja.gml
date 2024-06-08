// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function items_loja(){
	with(obj_player){
		return [
			new CriarItem("Aquario"     , 15,spr_aquario,ITYPE.EQUIPTOP,
				function(){
					timer = 10
				}
			),
			new CriarItem("Bomba"       , 10,spr_bomba,ITYPE.ARMA,
				function(){
					static intensity = 0
					intensity ++
					if intensity == 10{
						consume_item()
						instance_create_layer(x,y,"Sensores",obj_bomba,{
							speed: 8,
							direction: point_direction(x,y,mouse_x,mouse_y)
						})
						intensity = 0
					}
				}
			),
			new CriarItem("Desentupidor",  5,spr_desentupidor,ITYPE.CONSUMIVEL,
				function(){
					var _target = instance_place(x,y,obj_privada)
					if instance_exists(_target) and !_target.desbloqueada{
						consume_item()
						_target.desbloqueada = true
						_target.image_index = 1
					}
				}
			),
			new CriarItem("Pocao de Cura", 5,spr_pocao,ITYPE.CONSUMIVEL,
				function(){
					global.hp += 5
					consume_item()
				}
			),
			new CriarItem("Jetpack"     , 40,spr_jetpack,ITYPE.EQUIPBACK,
				function(){
					if global.use /*with(obj_player)*/{ 
						vsp -= 1
						vsp = (abs(vsp) <= P_SPEED_MAX)? vsp: P_SPEED_MAX
					}
				}
			),
			new CriarItem("Uzi", 30, spr_uzi_p, ITYPE.ARMA,
				function(){
					static i = 0
					switch(i){
						case 0: /*with(obj_player)*/ instance_create_layer(x,y,"Sensores", obj_bullet,{
							direction: point_direction(x,y,mouse_x,mouse_y),
							speed: 16,
							})
						default: i = (i + 1)%8
					}
				}
			),
			new CriarItem("Ima",20,spr_ima, ITYPE.EQUIPTOP,
				function(){
					if instance_exists(obj_coin) with(obj_coin){
						var _dist = distance_to_object(other)
						var _dir = point_direction(x,y,other.x,other.y)
						if _dist <= 500{
							x += 100*(dcos(_dir))/_dist
							y -= 100*(dsin(_dir))/_dist
						}
					}
				}
			),
			new CriarItem("Bomba BN"       , 10,spr_bomba_bn,ITYPE.ARMA,
				function(){
					static intensity = 0
					intensity ++
					if intensity == 10{
						consume_item()
						instance_create_layer(x,y,"Sensores",obj_bomba_bn,{
							speed: 8,
							direction: point_direction(x,y,mouse_x,mouse_y)
						})
						intensity = 0
					}
				}
			),
		]
	}
}

function consume_item(){
	with(obj_player){
		inv[item_index] = NOITEM
	}
}

function usar_item(){
	inv[item_index].usar()
}
function CriarItem(_nome = "", _custo = 0, _sprite = spr_vazio, _tipo = ITYPE.NOTITEM, _usar = function(){}) constructor {
	nome = _nome
	custo = _custo
	sprite = _sprite
	tipo = _tipo
	usar = _usar
}