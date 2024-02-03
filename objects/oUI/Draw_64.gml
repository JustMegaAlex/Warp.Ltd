
if is_transition {
	draw_set_color(c_black)
	var h = display_get_gui_height()
	var yy = h * transition * 0.5
	draw_rectangle(0, 0, display_get_gui_width(), yy, false)
	draw_rectangle(0, h, display_get_gui_width(), h - yy, false)
	draw_set_color(c_white)
}
