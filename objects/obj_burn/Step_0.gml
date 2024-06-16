if position_meeting(x,y,global.layer_de_colisao) then instance_destroy()
else vspeed -= 0.2

if t == 0{
	instance_destroy()
	exit
}
else {t--}
