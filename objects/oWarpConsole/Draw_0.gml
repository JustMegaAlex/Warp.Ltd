///remember, its locked to the screen not the camera 
/// @desc Draw menu 

draw_self()

var halign = draw_get_halign(), valign = draw_get_valign()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
for (var i = 0; i < array_length(menu); i++)
{
	var txt = menu[i].title
	var col = c_grey
	if (menu_cursor == i) {
		col = c_white
	}
	var xx = menu_x; 
	var yy = menu_y + (menu_itemheight * (i * menu_item_distance_mult))
	DrawTextOutlined(txt, xx, yy, col)
}

draw_set_halign(halign)
draw_set_valign(valign)


