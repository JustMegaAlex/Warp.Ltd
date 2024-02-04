
event_inherited()

if global.pause {
	exit
}

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

if warp_to_ship and oUI.is_middle_transition {
	var area = warp_to_ship.warp_area
	x = random_range(area.bbox_left, area.bbox_right)
	y = random_range(area.bbox_top, area.bbox_bottom)
	in_control = true
	ship = warp_to_ship
	warp_to_ship = noone
}

if is_warping_home and oUI.is_middle_transition {
	is_warping_home = false
	x = oWarpCore.x
	y = oWarpCore.y
	in_control = true
	oWarpCore.Cooldown()
}

if in_warp {
	teleporting += oInput.key_jump ? 1 : -1
	teleporting = clamp(teleporting, 0, teleport_trashold)
	if teleporting >= teleport_trashold {
		WarpHome()
		teleporting = 0
	}
}
