
global.frame++

escape_pressed.update()

if keyboard_check_pressed(vk_escape) {
	if escape_pressed.timer {
		game_end(0)
	} else {
		escape_pressed.start()	
	}
}

debug_draw_update()
