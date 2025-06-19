extends Node2D
var high_score = 0
var current_score : int
var previus_score : int
func spawn_enemies():
	var new_enemy = preload("res://Assets/Scenes/Enemy.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_enemy.global_position = %PathFollow2D.global_position
	add_child(new_enemy)

func _on_timer_timeout() -> void:
	spawn_enemies()
	update_score()


func update_score():
	Game.current_score = Game.previus_score 
	if Game.current_score > Game.high_score:
		Game.high_score = Game.current_score
	Game.current_score = 0


func _on_player_health_depleted() -> void:
	%GameOverScreen.visible = true
	%ScoreLabel.visible = false
	
func _on_reset_pressed():
	get_tree().reload_current_scene()
