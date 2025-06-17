extends Node2D



func spawn_enemies():
	var new_enemy = preload("res://Scenes/Enemy.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_enemy.global_position = %PathFollow2D.global_position
	add_child(new_enemy)


func _on_timer_timeout() -> void:
	spawn_enemies()


func _on_player_health_depleted() -> void:
	%GameOverScreen.visible = true
	get_tree().paused = true


func _on_button_pressed() -> void:
	if Input.is_action_just_pressed("Restart"):
		get_tree().reload_current_scene()
