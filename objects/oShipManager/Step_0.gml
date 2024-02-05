
if !warp_timer-- and !place_meeting(x, y, oPlayer) {
	if !place_meeting(x, y, oOrc) {
		oPlayer.OnWarpComplete(id)
	}
	instance_destroy()
}
