
var h = display_get_gui_height()
draw_sprite(sUIBlaster, oBlaster.ammo, ui_x, h + ammo_rely)
draw_sprite(sUIHp, oPlayer.hp, ui_x, h + hp_rely)

if is_transition {
	draw_set_color(c_black)
	var yy = h * transition * 0.5
	draw_rectangle(0, 0, display_get_gui_width(), yy, false)
	draw_rectangle(0, h, display_get_gui_width(), h - yy, false)
	draw_set_color(c_white)
}

