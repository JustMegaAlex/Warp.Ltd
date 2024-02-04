
event_inherited()

if !oUI.is_transition
		and !collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false) {
	uzi.TriggerShots()
}

