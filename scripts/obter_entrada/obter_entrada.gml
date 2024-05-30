// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function obter_entrada(){
	global.left = keyboard_check(global.control_left)
	global.right = keyboard_check(global.control_right)
	global.up = keyboard_check(global.control_up)
	global.down = keyboard_check(global.control_down)
	global.interact = keyboard_check_pressed(global.control_interact)
	global.quit = keyboard_check(global.control_quit)
	global.use =  keyboard_check(global.control_use)
}
//função para caso algum erro seja feito na entrada dos testes
function entrada_padrao(){
	global.control_left = vk_left
	global.control_right = vk_right
	global.control_down = vk_down
	global.control_up = vk_up
	global.control_interact = vk_space
	global.control_quit = vk_escape
	global.control_use = ord("Z")
}