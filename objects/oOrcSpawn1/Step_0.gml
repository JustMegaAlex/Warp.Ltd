
if !ship {
	exit
}

if !timer-- {
	waves--
	repeat(per_wave) {
		instance_create_layer(x, y, "Instances", oOrc)
	}
	if waves {
		timer = random_range(time_min, time_max) * 60
	} else {
		instance_destroy()
	}
}
