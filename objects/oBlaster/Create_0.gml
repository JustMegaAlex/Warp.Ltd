
ammo_max = 5
ammo = 5
ammo_time = 120
ammo_timer = ammo_time
carrier = oPlayer
rely = -20
radius = 10
reloading = 0
reload_time = 15
side = Sides.neutral

function shoot(dir) {
	instance_create_layer(x + lengthdir_x(sprite_width, image_angle),
						  y + lengthdir_y(sprite_width, image_angle),
						  "Foreground", oBlasterShot)
}

function Full() {
	return ammo >= ammo_max
}

function Reload() {
	ammo = ammo_max
}
