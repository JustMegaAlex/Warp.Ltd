
event_inherited()

in_control = true

ammo_max = 5
ammo = ammo_max
sp = 2
hsp = 0
vsp = 0
side = Sides.ours
reload_time = 30
reloading = 0
warp_to_ship = noone
ship = noone
teleporting = 0
teleport_trashold = 60

is_warping_home = false
in_warp = false

function SetInControl(val) {
	in_control = val
}

function shoot(dir, obj=oSimpleBullet, spr=sSimpleBullet, sp=undefined) {
	var inst = instance_create_layer(x, y, layer, obj)
	inst.image_angle = dir
	inst.sprite_index = spr
	if sp != undefined
		inst.sp = sp
	
	inst.side = side
}

function Warp(ship) {
	in_control = false
	oUI.StartTransition()
	warp_to_ship = ship
	in_warp = true
}

function WarpHome() {
	in_control = false
	oUI.StartTransition()
	is_warping_home = true
	in_warp = false
}

scr_camera_set_pos(0, x, y)

if !instance_exists(oInput) {
	instance_create_layer(0, 0, "Instances", oInput)
}

instance_create_layer(x, y, layer, oBlaster)
