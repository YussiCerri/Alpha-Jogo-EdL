//Chamada a script que recebe as entradas
obter_entrada()

#region Movimentação na Agua

var _dir_h = (right - left)//direção horizontal
var _dir_v = (down - up) //direção vertical
x += hsp*_dir_h //incremento de x na direção escolhida
y += vsp*_dir_v //incremento de y na direção escolhida

#endregion

#region Direção do Peixe na Agua

image_xscale = _dir_h
image_angle = - 45*_dir_v*_dir_h

#endregion