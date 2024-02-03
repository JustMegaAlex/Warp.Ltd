
draw_self()

var halign = draw_get_halign(), valign = draw_get_valign()

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
for (var i = 0; i < array_length(menu); i++)
{
	var txt = menu[i].warp_key
	var col = c_grey
	if (menu_cursor == i) {
		col = c_white
	}
	var xx = menu_x
	var yy = menu_y + (menu_itemheight * (i * menu_item_distance_mult))
	draw_set_color(col)
	draw_text(xx, yy, txt)
}

draw_set_halign(halign)
draw_set_valign(valign)
draw_set_color(c_white)

