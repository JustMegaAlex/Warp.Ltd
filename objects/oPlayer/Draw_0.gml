
event_inherited()

draw_set_halign(fa_center)
if show_warp_complete {
	draw_set_color(c_yellow)
	draw_text(x, y - sprite_height - 28, "Warp complete! +5 coins")
}

draw_set_color(c_white)
if teleporting > 0 {
	draw_text(x, y - sprite_height - 14, "Warping back")
}
