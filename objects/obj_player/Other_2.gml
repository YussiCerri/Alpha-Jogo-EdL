ini_open("Opçoes.ini")

global.control_left = ini_read_real("Controls","left",vk_left)
global.control_right = ini_read_real("Controls","right",vk_right)
global.control_down = ini_read_real("Controls","down",vk_down)
global.control_up = ini_read_real("Controls","up",vk_up)
global.control_interact = ini_read_real("Controls","interact",vk_space)

ini_close()