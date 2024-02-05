
event_inherited()

if !oUI.is_transition and instance_exists(oPlayer)
		and !collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false) {
	uzi.TriggerShots()
}

