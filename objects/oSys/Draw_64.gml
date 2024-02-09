
debug_draw_var("assgn", array_length(global.assignments))

if escape_pressed.timer {
	draw_text(display_get_gui_width() * 0.5, 30, "Press ESC again to exit")
}
