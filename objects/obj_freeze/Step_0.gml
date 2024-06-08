if position_meeting(x+hspeed,y+vspeed,global.layer_de_colisao) instance_destroy()
else vspeed += 0.2

if t == 0{
	instance_destroy()
	exit
}
else {t--}
