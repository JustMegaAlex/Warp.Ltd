
event_inherited()

animation = {
	wave_sp: 12,
	wave_angle_max: 10,
	wave_angle: 0,
	jump_h: 6,
	z: 0,
	frame: 0,
    walk: function() {
		frame++
		// waving animation
        wave_angle = lengthdir_y(
            wave_angle_max,
            wave_sp * frame)
		// jumping animation
		z = -abs(lengthdir_y(
				jump_h,
				wave_sp * frame))
    },
	reset: function() {
		frame = 0
		wave_angle = 0
		z = 0
	}
	
}

fake_image_angle = 0

function draw_movement() {
	draw_sprite_ext(
		sprite_index, 0, x, y + animation.z,
		1, 1, fake_image_angle + animation.wave_angle, c_white, 1)
}

