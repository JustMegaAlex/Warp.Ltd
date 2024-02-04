
if !instance_exists(carrier) {
	instance_destroy()
	exit
}

image_angle = point_direction(carrier.x, carrier.y, oPlayer.x, oPlayer.y)
image_yscale = ((image_angle < 90) or (image_angle > 270)) ? 1 : -1

//// shooting
reloading--

if is_shooting and !reloading {
	if !shot_timer-- {
		shoot(inst_dir(oPlayer))
		shots_left--
		if !shots_left {
			is_shooting = false
			reloading = reload_time
			shots_left = shots
		} else {
			shot_timer = shot_delay
		}
	}
}
