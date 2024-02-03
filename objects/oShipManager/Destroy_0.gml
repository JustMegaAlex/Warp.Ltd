
for (var i = 0; i < array_length(entities); ++i) {
	if instance_exists(entities[i])
		instance_destroy(entities[i])
}

instance_destroy(warp_area)

layer_tilemap_destroy(tilemap)

array_remove(global.assignments, id)
