extends Node2D

func spawn_enemies():
	var new_enemy = preload("res://Assets/Scenes/Enemy.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_enemy.global_position = %PathFollow2D.global_position
	add_child(new_enemy)

func _on_timer_timeout() -> void:
	spawn_enemies()

func _on_player_health_depleted() -> void:
	%GameOverScreen.visible = true

func update_score():
	Global.current_score = Global.previus_score 
	if Global.current_score > Global.high_score:
		Global.high_score = Global.current_score
	Global.current_score = 0

func _on_reset_pressed():
	update_score()
	get_tree().reload_current_scene()
