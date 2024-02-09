
event_inherited()

carrier = noone
rely = -20
radius = 16
reloading = 0
reload_time = 60
side = Sides.theirs

is_shooting = false
shots = 1
shots_left = shots
shot_delay = 20
shot_timer = 0

function TriggerShots() {
	is_shooting = true
}

function shoot(dir) {
	Shoot(dir, oBullet)
	audio_play_sound(sfxUzi, 3, false)
}
