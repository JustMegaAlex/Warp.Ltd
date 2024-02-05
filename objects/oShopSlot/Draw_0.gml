
event_inherited()

draw_self()

var scale = 2
if item > -1 {
	var spr = data[? item].spr
	draw_sprite_ext(spr, 0,
					x + sprite_get_width(spr) * 0.5, y - 20,
					scale, scale, 0, c_white, 1)
    
}
