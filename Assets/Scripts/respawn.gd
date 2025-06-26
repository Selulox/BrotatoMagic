extends Timer

var respawn_time = 10.0

func _on_timeout() -> void:
	const time = 1.0
	if wait_time <= 10.0:
		respawn_time -= time
		%respawn_time_bar.value = respawn_time
		if wait_time <= 0.0:
			get_tree().reload_current_scene()
			
