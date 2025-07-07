extends Node2D

var new_enemy
var respawn_time = 10.0

func spawn_enemies():
	new_enemy = preload("res://Assets/Scenes/Enemy.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_enemy.global_position = %PathFollow2D.global_position
	add_child(new_enemy)

func _on_enemy_spawn_timer_timeout() -> void:
	spawn_enemies()

func _on_respawn_time_timeout() -> void:
	%respawn_time_bar.visible = false
	const time = 1.0
	if %GameOverScreen.visible == true:
		%respawn_time_bar.visible = true
		if respawn_time <= 10.0:
			respawn_time -= time
			%respawn_time_bar.value = respawn_time
			if respawn_time <= 0.0:
				Global.player_xp = 0.0
				update_score()
				get_tree().paused = false
				get_tree().reload_current_scene()
	else:
		return

func _on_player_health_depleted() -> void:
	%GameOverScreen.visible = true
	get_tree().paused = true

func update_score(): 
	if Global.current_score > Global.high_score:
		Global.high_score = Global.current_score
	Global.current_score = 0

func _on_reset_pressed():
	Global.player_xp = 0.0
	update_score()
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_xp_bar_level_up():
	%Player_level_up_screen.visible = true
	get_tree().paused = true

func _on_slot_1_button_pressed() -> void:
	%Player_level_up_screen.visible = false
	get_tree().paused = false

func _on_slot_1_button_2_pressed() -> void:
	%Player_level_up_screen.visible = false
	get_tree().paused = false

func _on_slot_1_button_3_pressed() -> void:
	%Player_level_up_screen.visible = false
	get_tree().paused = false
