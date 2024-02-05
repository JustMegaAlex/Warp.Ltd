
draw_self()

if active_timer {
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text_ext(x + txt_x, y - sprite_height + txt_y, text, sep, text_width)
}
