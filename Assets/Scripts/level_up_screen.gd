extends CanvasLayer

func _on_button_pressed() -> void:
	get_tree().paused = false
	queue_free()

func _on_button_2_pressed() -> void:
	get_tree().paused = false
	queue_free()

func _on_button_3_pressed() -> void:
	get_tree().paused = false
	queue_free()
