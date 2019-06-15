extends Panel

func _ready():
	var c
	for c in range(0,4):
		$Controller.add_item(str(c), c)
	
	var k
	c = 0
	for k in InputHandler.Out_to_In.keys():
		$Out.add_item(k, c)
		c += 1
	
	var i
	c = 0
	for i in InputMap.get_actions():
		if i.begins_with("0_"):
			$Actual.add_item(i.lstrip("0_"), c)
			c += 1


func _on_Button_pressed():
	var remapO = $Out.get_item_text($Out.get_selected_id())
	var remapC = $Controller.get_selected_id()
	var remapI = $Actual.get_item_text($Actual.get_selected_id())
	InputHandler.remap(remapO, remapC, remapI)

func _process(delta):
	var IDisplay = "Out | [controller1 actual, controller3 actual, etc...]\n-------------------------------------------\n\n"
	var k
	var OI = InputHandler.Out_to_In
	for k in OI.keys():
		IDisplay += k + ":\n  " + str(OI[k]) + "\n\n"
	
	$ScrollContainer/DisplayMap.text = IDisplay
	
	
	
	
	