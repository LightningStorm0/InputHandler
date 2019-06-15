----------------------------------------------------------------------------------------
u/_Lightning_Storm's
----------------------------------------------------------------------------------------
  _____                   _   _    _                 _ _            __      ____   ___  
 |_   _|                 | | | |  | |               | | |           \ \    / /_ | / _ \ 
   | |  _ __  _ __  _   _| |_| |__| | __ _ _ __   __| | | ___ _ __   \ \  / / | || | | |
   | | | '_ \| '_ \| | | | __|  __  |/ _` | '_ \ / _` | |/ _ \ '__|   \ \/ /  | || | | |
  _| |_| | | | |_) | |_| | |_| |  | | (_| | | | | (_| | |  __/ |       \  /   | || |_| |
 |_____|_| |_| .__/ \__,_|\__|_|  |_|\__,_|_| |_|\__,_|_|\___|_|        \/    |_(_)___/ 
             | |                                                                        
             |_|                                                                        
----------------------------------------------------------------------------------------
Created by Warren Jennings
----------------------------------------------------------------------------------------

InputHandler Instructions (you don't have to follow these if you're starting your project with this project):
	1) Copy the InputHandler folder into your project
	2) Add InputHandler.tscn as AutoLoad
	3) Paste the contents of inputmap.txt between "[Display]" and "[Rendering]" in your (preferably new) "project.godot" file (make sure your project is not currently open in Godot)

InputHandler Functions:
	func pressed(action, controller):
		returns true if input is pressed, false if not
		
		action | the name of the action you want to check
		controller | the ID of the controller you want to check on

	func just_pressed(action, controller):
		returns true if input is just pressed, false if not
		
		action | the name of the action you want to check
		controller | the ID of the controller you want to check on

	func just_released(action, controller):
		returns true if input is just released, false if not
		
		action | the name of the action you want to check
		controller | the ID of the controller you want to check on

	func strength(action, controller):
		returns strength of input you're checking for (0 to 1)
		
		action | the name of the action you want to check
		controller | the ID of the controller you want to check on

	func remap(input, controller, action):
		changes the input that an action is linked to
		
		input | the input you want to map the action to
		controller | the controller who's action you're remapping
		action | the action you're remapping
	
	func add_action(action):
		adds a new action to the InputHandler
		
		action | the action you want to add

	func return_all_current_inputs():
		returns a list of inputs being pressed

	func return_all_current_actions(controller):
		returns a list of actions being pressed

InputHandler types? sorta?
	input: inputs are all the things listed in the Input Map (the godot one, not mine)
		you can check these in the "Input Map" tab in Project Settings
	
	controller: int 0-3 that corrosponds with the device id
	
	action: actions can be remapped to inputs and checked with InputMapper
		you can edit these actions in InputHandler.gd
	
		these actions are included by default
			L_Left
			L_Right
			L_Up
			L_Down
			L_Click
			
			R_Left
			R_Right
			R_Up
			R_Down
			R_Click
			
			D_Left
			D_Right
			D_Up
			D_Down
			
			RT
			LT
			RB
			LB
			
			ST
			SL
			
			A
			B
			X
			Y