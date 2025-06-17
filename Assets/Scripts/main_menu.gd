extends Node2D

func _on_about_pressed() -> void:
	%aboutscreen.visible = true

func _on_exit_about_pressed() -> void:
	%aboutscreen.visible = false

func _on_options_pressed() -> void:
	%OptionsScreen.visible = true
	
func _on_option_exit_pressed() -> void:
	%OptionsScreen.visible = false

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/GAME.tscn")


func _on_exit_game_pressed() -> void:
	get_tree().quit()
