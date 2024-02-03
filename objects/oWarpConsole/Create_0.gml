/// @desc GUI/vars/Menu Setup 

menu_size = array_length(global.assignments)

image_yscale = max(0.5, menu_size)

//// Menu items size
menu_text_scale = 1
menu_itemheight = font_get_size(fntMain)
menu_item_distance_mult = 1.5

//// Menu positioning
x = oWarpCore.x + 18
menu_x = x + 4
y = oWarpCore.y
menu_y_base = oWarpCore.y + 3 
			  - menu_itemheight * menu_size * menu_item_distance_mult * 0.5
menu_y = menu_y_base

//// Menu control
menu_committed = -1
menu_control = true
// mouse control
menu_top = 0
menu_bottom = 0
menu_cursor = 0


function PerformAction(index) {
	var ship = menu[index]
	oPlayer.Warp(ship)
    show_debug_message("Menu item has no action")
}

function DrawTextOutlined(text, xx, yy, color, offset=2, outline_color=c_black) {
	draw_set_color(outline_color)
	draw_text_transformed(xx - offset, yy, text, menu_text_scale, menu_text_scale, 0)
	draw_text_transformed(xx + offset, yy, text, menu_text_scale, menu_text_scale, 0)
	draw_text_transformed(xx, yy - offset, text, menu_text_scale, menu_text_scale, 0)
	draw_text_transformed(xx, yy + offset, text, menu_text_scale, menu_text_scale, 0)
	draw_set_color(color)
	draw_text_transformed(xx, yy, text, menu_text_scale, menu_text_scale, 0)
}

menu = global.assignments

