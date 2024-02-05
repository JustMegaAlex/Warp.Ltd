
text = ""
active_time = 120
active_timer = 0
txt_x = -sprite_width * 0.5 + 3
txt_y = 2
sep = 12
text_width = sprite_width - 6
visible = false

function Show(xx, yy, txt) {
	x = xx
	y = yy
	active_timer = active_time
	text = txt
	visible = true
	var w = string_width(text)
	var lines = w div text_width + ((w mod text_width) != 0) + 2
	image_yscale = lines * sep / sprite_get_height(sprite_index)
	var test = true
}

draw_set_font(fntMain)
