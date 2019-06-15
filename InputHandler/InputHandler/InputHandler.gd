extends Control

export (Dictionary) var Out_to_In = {
"L_Left":["0_LS_L","1_LS_L","2_LS_L","3_LS_L"],
"L_Right":["0_LS_R","1_LS_R","2_LS_R","3_LS_R"],
"L_Up":["0_LS_U","1_LS_U","2_LS_U","3_LS_U"],
"L_Down":["0_LS_D","1_LS_D","2_LS_D","3_LS_D"],
"L_Click":["0_LS_C","1_LS_C","2_LS_C","3_LS_C"],

"R_Left":["0_RS_L","1_RS_L","2_RS_L","3_RS_L"],
"R_Right":["0_RS_R","1_RS_R","2_RS_R","3_RS_R"],
"R_Up":["0_RS_U","1_RS_U","2_RS_U","3_RS_U"],
"R_Down":["0_RS_D","1_RS_D","2_RS_D","3_RS_D"],
"R_Click":["0_RS_C","1_RS_C","2_RS_C","3_RS_C"],

"D_Left":["0_DP_L","1_DP_L","2_DP_L","3_DP_L"],
"D_Right":["0_DP_R","1_DP_R","2_DP_R","3_DP_R"],
"D_Up":["0_DP_U","1_DP_U","2_DP_U","3_DP_U"],
"D_Down":["0_DP_D","1_DP_D","2_DP_D","3_DP_D"],

"RT":["0_RT","1_RT","2_RT","3_RT"],
"LT":["0_LT","1_LT","2_LT","3_LT"],
"RB":["0_RB","1_RB","2_RB","3_RB"],
"LB":["0_LB","1_LB","2_LB","3_LB"],

"ST":["0_ST","1_ST","2_ST","3_ST"],
"SL":["0_SL","1_SL","2_SL","3_SL"],

"A":["0_A","1_A","2_A","3_A"],
"B":["0_B","1_B","2_B","3_B"],
"X":["0_X","1_X","2_X","3_X"],
"Y":["0_Y","1_Y","2_Y","3_Y"],
}

func pressed(action, controller):
	return Input.is_action_pressed(Out_to_In[action][controller])

func just_pressed(action, controller):
	return Input.is_action_just_pressed(Out_to_In[action][controller])

func just_released(action, controller):
	return Input.is_action_just_released(Out_to_In[action][controller])

func strength(action, controller):
	return Input.get_action_strength(Out_to_In[action][controller])

func remap(input, controller, action):
	Out_to_In[input][controller] = str(controller) + "_" + action

func add_action(action):
	Out_to_In[action] = ["", "", "", ""]

func return_all_current_inputs():
	var ret = []
	var k
	for k in Out_to_In.keys():
		var i
		for i in Out_to_In[k]:
			if Input.is_action_pressed(i):
				ret.append(i)
	return ret

func return_all_current_actions(controller):
	var ret = []
	var k
	for k in Out_to_In.keys():
		if Input.is_action_pressed(Out_to_In[k][controller]):
			ret.append(k)
	return ret