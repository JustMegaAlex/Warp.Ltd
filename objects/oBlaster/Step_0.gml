
if !instance_exists(carrier) {
	instance_destroy()
	exit
}

if !active {
	exit
}

image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y)
image_yscale = ((image_angle < 90) or (image_angle > 270)) ? 1 : -1

if ammo < ammo_max and !ammo_timer-- {
	ammo++
	ammo_timer = ammo_time
}

//// shooting
reloading--
if oInput.key_shoot_pressed
		and !reloading and ammo {
	shoot(point_dir(mouse_x, mouse_y))
	reloading = reload_time
	ammo--
}