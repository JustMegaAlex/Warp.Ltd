
event_inherited()

switch (state) {
    case OrcState.walk:
        var wall = move_contact_obj(sp, dir, oWall)
        dist_to_walk -= sp
        if wall {
            switch_to_walk()
        }
        if !dist_to_walk {
            switch_to_walk()
            walked_before_shoot = true
        }
        var is_allowed_to_shoot = !oUI.is_transition and instance_exists(oPlayer)
                and !collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false)
        if is_allowed_to_shoot and walked_before_shoot {
            switch_to_shoot()
        }
        break;

    case OrcState.shoot:
        if !shoot_timer.update() {
            uzi.TriggerShots()
            switch_to_walk()
            walked_before_shoot = false
        }
        break;
}

