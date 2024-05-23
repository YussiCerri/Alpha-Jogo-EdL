/// @description Insert description here
// You can write your code in this editor

//MOVIMENTACAO NA AGUA
if keyboard_check(vk_right) x+=hsp
if keyboard_check(vk_left) x-=hsp
if keyboard_check(vk_up) y-=vsp
if keyboard_check(vk_down) y+=vsp

//DIRECAO DO PEIXE NA AGUA
if keyboard_check(vk_right) and !(keyboard_check(vk_up) or keyboard_check(vk_down))
{
	image_xscale=1; 
	image_angle=0
}
if keyboard_check(vk_left) and !(keyboard_check(vk_up) or keyboard_check(vk_down))
{
	image_xscale=-1; 
	image_angle=0
}
if keyboard_check(vk_up) 
{
	if !keyboard_check(vk_right) and !keyboard_check(vk_left) {image_xscale=1; image_angle=90}
	else if keyboard_check(vk_right) {image_xscale=1; image_angle=45}
	else if keyboard_check(vk_left) {image_xscale=-1; image_angle=-45}
}

if keyboard_check(vk_down)
{
	if !keyboard_check(vk_right) and !keyboard_check(vk_left) {image_xscale=1; image_angle=-90}
	else if keyboard_check(vk_right) {image_xscale=1; image_angle=-45}
	else if keyboard_check(vk_left) {image_xscale=-1; image_angle=45}
}