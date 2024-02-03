
event_inherited()

key_left = false
key_right = false
key_up = false
key_down = false
key_shoot = false

if in_control {
	key_left = oInput.key_left
	key_right = oInput.key_right
	key_up = oInput.key_up
	key_down = oInput.key_down
	key_shoot = oInput.key_shoot
}


//// movement
move_h = key_right - key_left
move_v = key_down - key_up
var input = abs(move_h) or abs(move_v)

var move_dir = point_direction(0, 0, move_h, move_v)
hsp = lengthdir_x(sp, move_dir) * input
vsp = lengthdir_y(sp, move_dir) * input

move_coord_contact_obj(hsp, vsp, oWall)

scr_camera_set_pos(0, x, y)
