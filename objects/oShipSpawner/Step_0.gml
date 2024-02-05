
if !next_spawn_in-- {
	next_spawn_in = spawn_periods[| 0] * 60
	ds_list_delete(spawn_periods, 0)

	// spawn
	array_choose(ship_builders).Spawn(1000*total_spawns, -5000)
	total_spawns++
}
