
event_inherited()

draw_self()

var scale = 2
if item > -1 {
	draw_sprite_ext(data[? item].spr, 0, x, y - 20,
					scale, scale, 0, c_white, 1)
}
