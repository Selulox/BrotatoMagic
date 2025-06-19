extends RichTextLabel

var defult_text = 'Score: '

func _process(delta: float) -> void:
	var text = str(defult_text, str(Game.current_score))
	self.text = (text)
