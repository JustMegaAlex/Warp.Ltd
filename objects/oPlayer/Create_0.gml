
event_inherited()

in_control = true

hp_max = 5
hp = hp_max
plazma_clips = 0
stimpacks = 1
coins = 0

side = Sides.non_hitable

sp = 4
hsp = 0
vsp = 0
reload_time = 30
reloading = 0
warp_to_ship = noone
ship = noone
teleporting = 0
teleport_trashold = 60

is_dead = false
dead_timer = make_timer(150)

is_warping_home = false
in_warp = false
warp_complete = false

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

function hit() {}

function hit_indirect(dmg=1) {
	if is_dead {
		return	
	}
	hp = max(0, hp - 1)
	if hp == 0 {
		is_dead = true
		in_control = false
		sprite_index = sPlayerDead
		oBlaster.SetInactive()
		oBlaster.visible = false
		dead_timer.start()
	}
	draw_hit_timer = draw_hit_time
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
	warp_complete = false
}

function OnWarpComplete(ship) {
	coins += 5
	warp_complete = true
}

scr_camera_set_pos(0, x, y)

if !instance_exists(oInput) {
	instance_create_layer(0, 0, "Instances", oInput)
}

instance_create_layer(x, y, layer, oBlaster)

hitbox = create_hitbox(Sides.ours)
