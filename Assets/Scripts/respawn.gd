extends Timer

var respawn_time = 10

func respawn():
	if wait_time == 0:
		get_tree().reload_current_scene()

func retimer():
	pass
