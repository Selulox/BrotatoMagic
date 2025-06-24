extends RichTextLabel

var defult_text = 'High Score: '

func _process(delta: float) -> void:
	var text = str(defult_text, str(Global.high_score))
	self.text = (text)
