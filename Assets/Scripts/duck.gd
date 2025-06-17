extends AnimatedSprite2D

func  play_idle():
	%duck.play('idle')


func play_hurt():
	%duck.play('hurt')
	%duck.play('idle')
