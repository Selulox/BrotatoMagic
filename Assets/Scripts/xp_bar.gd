extends ProgressBar

signal level_up

func _process(delta: float) -> void:
	%Xp_Bar.value = Global.player_xp
	Global.player_level = 1
	if %Xp_Bar.value == %Xp_Bar.max_value:
		%Xp_Bar.value = 0
		Global.player_level += 1
		level_up.emit()
