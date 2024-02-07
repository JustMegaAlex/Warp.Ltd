
event_inherited()

side = Sides.neutral
hp = 5

draw_hit_time = 30
draw_hit_timer = 0

function hit(dmg=1) {
	hp -= dmg
	if !hp {
		instance_destroy()	
	}
	draw_hit_timer = draw_hit_time
}

function draw_hit() {
	var alpha = draw_hit_timer / draw_hit_time * 0.5
	gpu_set_fog(true, c_red, 0, 0)
	draw_sprite_ext(
		sprite_index,
		image_index,
		x, y,
		image_xscale, image_yscale,
		0, c_white, alpha)
	gpu_set_fog(false, c_red, 0, 0)
}

function shoot() {
	Shoot(point_dir(mouse_x, mouse_y),
		  global.default_bullet_obj,
		  {lifetime: 30})
}
