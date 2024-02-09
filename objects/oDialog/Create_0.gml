
text = ""
active_time = 240
active_timer = 0
txt_x = -sprite_width * 0.5 + 3
txt_y = 2
sep = 12
text_width = sprite_width - 6
visible = false

function Show(xx, yy, txt, time = active_time) {
	x = xx
	y = yy
	active_timer = time
	text = txt
	visible = true
	var w = string_width(text)
	var lines = w div text_width + ((w mod text_width) != 0) + 2
	image_yscale = lines * sep / sprite_get_height(sprite_index)
	var test = true
}
