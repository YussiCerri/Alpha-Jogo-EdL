ini_open("Opçoes.ini")

global.control_left = ini_read_real("Controls","left",vk_left)
global.control_right = ini_read_real("Controls","right",vk_right)
global.control_down = ini_read_real("Controls","down",vk_down)
global.control_up = ini_read_real("Controls","up",vk_up)
global.control_interact = ini_read_real("Controls","interact",vk_space)
global.control_quit = ini_read_real("Controls","quit", vk_escape)

ini_close()

global.control_left = vk_left
global.control_right = vk_right
global.control_down = vk_down
global.control_up = vk_up
global.control_interact = vk_space
global.control_quit = vk_escape