
carrier = oPlayer
rely = -10
radius = 5
reloading = 0
reload_time = 15
side = Sides.neutral

shoot_dist = 200

function shoot(dir) {
	instance_create_layer(x + lengthdir_x(sprite_width, image_angle),
						  y + lengthdir_y(sprite_width, image_angle),
						  "Instances", oBlasterShot)
}
