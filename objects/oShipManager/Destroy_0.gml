
for (var i = 0; i < array_length(entities); ++i) {
	if instance_exists(entities[i])
		instance_destroy(entities[i])
}

layer_tilemap_destroy(tilemap)