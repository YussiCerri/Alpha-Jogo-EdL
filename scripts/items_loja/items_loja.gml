// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function items_loja(){
	with(obj_player){
		return [
			new CriarItem("Aquario"     , 15,spr_aquario, ITYPE.EQUIPTOP,
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
					with(instance_place(x,y,obj_privada)){
						if !desbloqueada{
							consume_item()
							desbloqueada = true
							image_index = 1
							if array_get(global.salas[indice],1)!=self{
								array_set(global.salas[indice],0,room)
								array_set(global.salas[indice],1,self)
							}	
						}
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
					if global.use{ 
						vsp -= 1
						vsp = (abs(vsp) <= P_SPEED_MAX)? vsp: P_SPEED_MAX
					}
				}
			),
			new CriarItem("Uzi", 30, spr_uzi_p, ITYPE.ARMA,
				function(){
					static i = 0
					switch(i){
						case 0: 
							var _dir = point_direction(x,y,mouse_x,mouse_y)						
							instance_create_layer(x+16*dcos(_dir),y-16*dsin(_dir),"Sensores", obj_bullet,{
							direction: _dir,
							speed: 16,
							})
						default: i = (i + 1)%8
					}
				}
			),
			new CriarItem("Ima",20,spr_ima, ITYPE.EQUIPTOP,
				function(){
					with(obj_coin){
						var _dist = distance_to_object(other)
						var _dir = point_direction(x,y,other.x,other.y)
						if _dist <= 500 and _dist > 0{
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
			new CriarItem("Uzi_gelo", 50, spr_ice_gun, ITYPE.ARMA,
				function(){
					static i = 0
					switch(i){
						case 0:  
							var _dir = point_direction(x,y,mouse_x,mouse_y)
							instance_create_layer(x+16*dcos(_dir),y-16*dsin(_dir),"Sensores", obj_freeze,{
							direction: _dir+irandom_range(-15,15),
							speed: 8,
							})
						default: i = (i + 1)%4
					}
				}
			),
			new CriarItem("Uzi_fogo", 50, spr_fire_gun, ITYPE.ARMA,
				function(){
					static i = 0
					switch(i){
						case 0:  
							var _dir = point_direction(x,y,mouse_x,mouse_y)
							instance_create_layer(x+16*dcos(_dir),y-16*dsin(_dir),"Sensores", obj_burn,{
							direction: _dir+irandom_range(-15,15),
							speed: 8,
							})
						default: i = (i + 1)%4
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