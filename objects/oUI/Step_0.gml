
is_middle_transition = false

if is_transition {
	transition += trans_sp * trans_sign
	if transition >= 1 {
		is_middle_transition = true
		trans_sign = -1
	}
	if transition < 0 {
		transition = 0
		is_transition = false
	}
}

