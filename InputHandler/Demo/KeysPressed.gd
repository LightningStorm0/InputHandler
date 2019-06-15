extends Label

func _process(delta):
	text = "All Actions (proccesed and by controller):\n  0:\n    "
	var i
	for i in InputHandler.return_all_current_actions(0):
		text += i + "\n    "
		
	text += "\n  1:\n    "
	for i in InputHandler.return_all_current_actions(1):
		text += i + "\n    "
		
	text += "\n  2:\n    "
	for i in InputHandler.return_all_current_actions(2):
		text += i + "\n    "
		
	text += "\n  3:\n    "
	for i in InputHandler.return_all_current_actions(3):
		text += i + "\n    "