
//// shooting
reloading--
if key_shoot
		and !reloading {
	shoot(point_dir(mouse_x, mouse_y))
	reloading = reload_time
}