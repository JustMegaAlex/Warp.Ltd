
event_inherited()

enum OrcState {
    walk,
    shoot
}
state = OrcState.walk
randdist = randomer(50, 100)
dist_to_walk = randdist()
dir = random(360)
sp = 1
shoot_timer = make_timer(30)
side = Sides.non_hitable
walked_before_shoot = false

hp = 1

uzi = instance_create_layer(x, y, layer, oUzi)
uzi.carrier = id

function hit_indirect(dmg=1) {
	hp = max(0, hp - 1)
	if hp == 0 {
		instance_destroy()
	}
	draw_hit_timer = draw_hit_time
}

function switch_to_walk() {
    dist_to_walk = randdist()
    dir = random(360)
    state = OrcState.walk
	image_xscale = (dir < 90 or dir > 270) ? 1 : -1
}

function switch_to_shoot() {
    state = OrcState.shoot
    shoot_timer.start()
}

hitbox = create_hitbox(Sides.theirs)
