if position_meeting(x+hspeed,y,global.layer_de_colisao) hspeed = 0
if !position_meeting(x,y+vspeed,global.layer_de_colisao) vspeed += 0.1
else vspeed = 0

if t == 0{
	instance_change(obj_explosion,true)
}
else {t--}
