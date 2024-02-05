
if(!instance_exists(oPlayer)) {
	exit
}

x = oPlayer.x + lengthdir_x(radius, image_angle)
y = oPlayer.y + rely + lengthdir_y(radius, image_angle)
depth = -y - 20
