
if !warp_timer-- {
	if !reward_done and CheckWarpClear() and instance_exists(oPlayer) {
		oPlayer.OnWarpComplete()
		reward_done = true
	}
	if !place_meeting(x, y, oPlayer) {
		instance_destroy()
	}
}
