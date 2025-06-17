extends Area2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)
	pass

func shoot():
	const Bullet = preload("res://Scenes/bullet.tscn")
	var new_bullet = Bullet.instantiate()
	new_bullet.global_position = %shoot.global_position
	new_bullet.global_rotation = %shoot.global_rotation
	%shoot.add_child(new_bullet)



func _on_timer_timeout():
	shoot()
