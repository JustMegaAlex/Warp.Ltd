
if !instance_exists(carrier) {
	instance_destroy()
	exit
}

image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y)
image_yscale = ((image_angle < 90) or (image_angle > 270)) ? 1 : -1

//// shooting
reloading--
if oInput.key_shoot_pressed
		and !reloading {
	shoot(point_dir(mouse_x, mouse_y))
	reloading = reload_time
}