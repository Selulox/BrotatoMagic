extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var health = 100.0
signal health_depleted
var xp = 0

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector('move_left', 'move_right', "move_up", "move_down")
	velocity = direction * 300
	move_and_slide()
	
	const damage_rate = 35.0
	var overlapping_enemies = %HitBox.get_overlapping_bodies()
	if overlapping_enemies.size() > 0:
		health -= damage_rate * overlapping_enemies.size() * delta
		%HealthBar.value = health
		if health <= 0.0:
			health_depleted.emit()
			%pinky.play("death")
