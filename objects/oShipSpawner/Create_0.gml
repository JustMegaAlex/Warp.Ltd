
// splitted by difficulties
ship_builders = [[], [], []]

alarm[0] = 1
alarm[1] = 2

spawn_periods = ds_list_create()
next_spawn_in = 100
total_spawns = 0

difficulties = [0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1]

function generate_periods() {
    ds_list_clear(spawn_periods)
    var i = 0
    repeat(10) {
        spawn_periods[| i] = irandom_range(9, 12)
        i++
    }
    repeat(30) {
        spawn_periods[| i] = irandom_range(12, 15)
        i++
    }
    repeat(60) {
        spawn_periods[| i] = irandom_range(15, 20)
        i++
    }
    ds_list_shuffle(spawn_periods)
}
