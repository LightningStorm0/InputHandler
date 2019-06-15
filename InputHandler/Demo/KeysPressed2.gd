extends Label

func _process(delta):
	text = "All Inputs:\n  "
	var i
	for i in InputHandler.return_all_current_inputs():
		text += i + "\n  "