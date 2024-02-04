
if(!instance_exists(carrier)) {
	exit
}

x = carrier.x + lengthdir_x(radius, image_angle)
y = carrier.y + rely + lengthdir_y(radius, image_angle)
depth = -y + sprite_get_height(carrier.sprite_index) - 40 // workaround
