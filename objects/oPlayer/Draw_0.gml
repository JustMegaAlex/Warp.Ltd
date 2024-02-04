
event_inherited()

draw_set_halign(fa_center)
if in_warp and !warp_to_ship and instance_exists(ship) and !ship.warp_timer {
	draw_set_color(c_yellow)
	draw_text(x, y - sprite_height - 28, "Warp complete!")
}

draw_set_color(c_white)
if teleporting > 0 {
	draw_text(x, y - sprite_height - 14, "Warping back")
}
