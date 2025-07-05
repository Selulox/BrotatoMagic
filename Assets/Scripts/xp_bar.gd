extends ProgressBar

func _process(delta: float) -> void:
	%Xp_Bar.value = Global.player_xp
	#Level_Up
	if %Xp_Bar.value == %Xp_Bar.max_value:
		%Xp_Bar.value = 0
		Global.player_level += 1
