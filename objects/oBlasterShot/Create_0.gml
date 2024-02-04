
dist = 200
image_angle = oBlaster.image_angle
image_blend = #FFDB19
side = oBlaster.side

// Let them have it!!!
targets = ds_list_create()
targets_count = collision_line_list(x, y,
							  x + lengthdir_x(dist, image_angle),
							  y + lengthdir_y(dist, image_angle),
							  oHitable, false, true, targets, false)

if targets_count {
	var closest = targets[| 0]
	dist = inst_dist(closest)
	for (var i = 1; i < targets_count; ++i) {
	    var inst = targets[| i]
		if dist > inst_dist(inst) {
			closest = inst
			dist = inst_dist(inst)
		}
	}
	closest.hit()
}

image_xscale = dist / sprite_width

ds_list_destroy(targets)
