
if !next_spawn_in-- {
    if ds_list_empty(spawn_periods) {
        generate_periods()
    }
	next_spawn_in = spawn_periods[| 0] * 60
	ds_list_delete(spawn_periods, 0)
	var diff = 0
	if array_length(difficulties) {
		diff = array_shift(difficulties)
	} else {
        diff = 1
    }
	// spawn
	array_choose(ship_builders[diff]).Spawn(3000*total_spawns, -5000)
	total_spawns++
}
