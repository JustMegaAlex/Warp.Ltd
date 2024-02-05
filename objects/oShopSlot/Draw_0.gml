
event_inherited()

draw_self()

var scale = 2
if item > -1 {
	var spr = data[? item].spr
	draw_sprite_ext(spr, 0,
					x + sprite_get_width(spr) * 0.5, y - 20,
					scale, scale, 0, c_white, 1)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_left)
	draw_sprite(sCoin, 0, x, y + draw_cost_y_shift)
	draw_text(x + 4, y + draw_cost_y_shift, string(cost))
}
