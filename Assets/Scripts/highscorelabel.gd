extends RichTextLabel

var defult_text = 'High Score: '

func _process(_delta):
	var text = str(defult_text, str(Global.high_score))
	self.text = (text)
