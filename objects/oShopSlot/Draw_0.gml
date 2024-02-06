
event_inherited()

draw_self()

var scale = 2
if item > -1 {
	var spr = data[? item].spr
	var waving = lengthdir_y(draw_item_wave_magn, draw_item_wave_sp * global.frame)
	// item
	draw_sprite_ext(spr, 0,
					x + sprite_get_width(spr) * 0.5, y - 20 + waving,
					scale, scale, 0, c_white, 1)
	// shadow
	scale = 0.8 + waving/draw_item_wave_magn * 0.2
	draw_sprite_ext(sShopItemShadow, 0,
					x, y,
					scale, 1, 0, c_white, 1)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_left)
	waving = lengthdir_y(draw_cost_wave_magn, draw_cost_wave_sp * global.frame)
	draw_sprite(sCoin, 0, x, y + draw_cost_y_shift + waving)
	draw_text(x + draw_text_x_shift, y + draw_cost_y_shift + waving, string(cost))
}
