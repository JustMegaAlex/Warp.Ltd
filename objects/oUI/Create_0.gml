
ensure_singleton()

is_middle_transition = false
is_transition = true
trans_sp = 0.05
transition = 1
trans_sign = -1

ui_scale = 2
ui_x = 10 * ui_scale
hp_rely = -50 * ui_scale
ammo_rely = -30 * ui_scale
coins_rely = -70 * ui_scale

clip_x = 100 * ui_scale
stim_x = 140 * ui_scale

function StartTransition() {
	is_transition = true
	trans_sign = 1
}
